#include <stdio.h>

int main()
{
	int i = 2;
	printf("%2$d\n", 1, i);
	printf("%d", i);
			
	return 0;
}
