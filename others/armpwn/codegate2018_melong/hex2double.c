#include <stdio.h>
#include <stdint.h>

int main()
{
	double a;
	uint64_t c = 0x4043F333;
	*(uint64_t *)&a = (0x33333333 | (c << 32));
	double b = 1.1;	
	printf("hex of double %llx\n", a);
	printf("hex to double %lf\n", a);
	printf("double to hex %llx\n", b);
	return 0;
}
