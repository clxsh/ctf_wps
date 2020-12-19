ALL:
	cc -m32 -O0 -static -o exp exp.c
copy:
	scp -P5555 exp ubuntu@localhost:/home/ubuntu 

clean:
	rm exp
