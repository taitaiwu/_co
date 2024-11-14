#include <stdio.h>

int main (void)
{
    int R0 = 5;
    int R1 = 3;
    int R2 = 0;

    while (R0 > 0)
    {
        R2 = R2 + R1;
        R0 = R0 - 1;

        printf("R0=%d , R1=%d , R2=%d\n" , R0 , R1 , R2);
    }

    printf("R2=%d" , R2);
}