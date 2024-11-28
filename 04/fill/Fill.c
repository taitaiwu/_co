# include <stdio.h>

int main (void)
{
    FOREVER:
        int i = 16384;  
        //SCREEN在記憶體第一個位置是16384

        int M[100000] = {0};
        //記憶體(預設)

    WHILE:
        if (i >= 24576) goto WEND;  
        //SCREEN在記憶體最後一個位置是24575，大於等於24576時便結束(執行WEND)

        int color = 0;  
        //預設顏色是白色

        if (M[24576] == 0) goto NEXT;  
        //KEYBOARD在記憶體最後一個位置是24576，當未按鍵盤時，執行NEXT

        color = -1;
        //預設顏色為黑色;鍵盤為按下狀態

    NEXT:  //未按鍵盤時，執行之操作(螢幕變白)
        M[i] = color;
        i++; 
        goto WHILE;
        //依序讓每一個SCREEN變成0

    WEND:
        goto FOREVER;  //結束
}