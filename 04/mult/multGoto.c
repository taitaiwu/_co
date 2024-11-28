#include <stdio.h>

int main (void)
{
    int R0 = 5; //system set
    int R1 = 3; //system set
    int R2 = 0; //@2 A=0

    loop:   //(loop)
        if (R0 <= 0) goto exit1;    //@0 D=A @exit1 D;JLE

        R2 = R2 + R1;   //@1 D=A @2 A=A+D
        R0 = R0 - 1;    //@0 M=M-1

        printf("R0 = %d , R1 = %d , R2 = %d\n", R0 , R1 , R2);

        goto loop;  //loop 0;JUP

    exit1:
        printf("R2=%d\n", R2);
    //  }
}