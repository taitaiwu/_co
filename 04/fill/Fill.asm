// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Fill.asm

// Runs an infinite loop that listens to the keyboard input.
// When a key is pressed (any key), the program blackens the screen,
// i.e. writes "black" in every pixel;
// the screen should remain fully black as long as the key is pressed. 
// When no key is pressed, the program clears the screen, i.e. writes
// "white" in every pixel;
// the screen should remain fully clear as long as no key is pressed.

// Put your code here.
(FOREVER)
    //int i = 16384;  
    @16384
    D = A   //D = 16384
    @i
    M = D   //M = 16384

(WHILE)
    //if (i >= 24576) goto WEND;  
    @24576
    D = A       //D = 24576
    @i
    D = M - D   //D = i - 24576
    @WEND
    D;JGE       //當D≧0; i≧24576時，Jump至WEND

    //int color = 0;  
    @color
    M = 0

    //if (M[24576] == 0) goto NEXT;  
    @24576
    D = M   //D = 24576
    @NEXT
    D;JEQ   //當D=0時，Jump至NEXT

    //color = -1;
    @color
    M = -1

(NEXT)
    //M[i] = color;
    @color
    D = M   
    @i 
    A = M   //依序移動記憶體
    M = D 

    //i++; 
    @i 
    M = M + 1

    //goto WHILE;
    @WHILE
    0;JMP

(WEND)
    //goto FOREVER;
    @FOREVER
    0;JMP