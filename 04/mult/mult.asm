// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)

// Put your code here.

//int R2 = 0; 
@2 
M=0

(loop)
    //if (R0 <= 0) goto exit1;
    @0 
    D=M 
    @exit1 
    D;JLE

    //R2 = R2 + R1
    @1 
    D=M 
    @2 
    M=M+D

    //R0 = R0 - 1
    @0 
    M=M-1

    //goto loop;
    @loop

0;JUP 

(exit1)
    0;JMP