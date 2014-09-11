// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Fill.asm

// Runs an infinite loop that listens to the keyboard input. 
// When a key is pressed (any key), the program blackens the screen,
// i.e. writes "black" in every pixel. When no key is pressed, the
// program clears the screen, i.e. writes "white" in every pixel.

(LOOP)
@KBD
D=M
D=D-1
@PAINT
D;JGE
@LOOP
D;JLT
(PAINT)
@i
M=0
(WHILE)
@i
D=M
@SCREEN
A=D+A
M=-1
D=D+1
@i
M=D
@8192
D=D-A
@CLEAR
D;JGE
@WHILE
0;JMP
(CLEAR)
@i
M=0
(WHILE2)
@i
D=M
@SCREEN
A=D+A
M=0
D=D+1
@i
M=D
@8192
D=D-A
@LOOP
D;JGE
@WHILE2
0;JMP










