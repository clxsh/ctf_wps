#include <stdio.h>

int main()
{
    unsigned int t = 0x61616161;
    // srand(t);

    for (int i = 0; i <= 9; ++i) {
        printf("%d\n", rand() % 6 + 1);
    }

    // printf("%x\n", t);
    return 0;
}