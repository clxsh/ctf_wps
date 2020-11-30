ALL:
	cc -O0 -static -o exp exp.c
	find . | cpio -o --format=newc > ../rootfs.cpio

clean:
	rm exp
	rm ../rootfs.cpio