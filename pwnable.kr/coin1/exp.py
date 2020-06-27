#!/usr/bin/env python2

from pwn import *

def exp():
    N, C = io.recvline_contains("N=").split(' ')
    N = int(N[2:])
    C = int(C[2:])
    print("Number={}, Chance={}".format(N, C))
    start = 0
    end = N-1
    for i in range(C):
        middle = int((start + end) / 2)
        send_data = " ".join(str(num) for num in range(start, middle+1))
        print("chance:{}  {}".format(i, send_data))
        io.sendline(send_data)
        weight = int(io.recvline())
        print("weight: {}".format(weight))
        if weight != (middle-start+1) * 10:
            end = middle
        else:
            start = middle+1
        if weight == 9:
            result = start
        elif weight == 10:
            result = end
            
    io.sendline(str(result))



host = "pwnable.kr"
port = 9007
io = remote(host, port)
io.recvline_contains("N=")
# context.log_level = "debug"
for i in range(100):
    exp()

io.interactive()
