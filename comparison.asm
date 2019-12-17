 //base address of array 1 
@21
D=A
@Pointer1 
M=D

(LOOP1)
    @Pointer1
    D = M
@21
    D=D-A
//number of digits stored.

 //length we want = 10 digits
     @10
D=A-D
//no of digits left to be stored
    @End1
    D; JLE

    @KBD
    D=M
@Pointer1
    A=M
    M=D

    @Pointer1
    M=M+1
    @LOOP1
    0; JMP

(End1)
//base address of array2
@41
D=A
@Pointer2
M=D

(LOOP2)
  @Pointer2
    D = M
    @41
    D = D - A

 //Size of array
    @10
    D = A - D
    @End2
    D; JLE
//Comes out of loop if size becomes more than 10

    @KBD //Taking user input
    D=M
    @Pointer2
    A=M
    M=D //Storing user input in the array

    @Pointer2
    M=M+1
    @LOOP2
    0; JMP

(End2)

//Comparing the two numbers

//reinitializing the Pointer1 to base address 21
@21
D=A
@Pointer1
M=D
//reinitializing the Pointer2 to base address 41
@41
D=A
@Pointer2
 M=D

(LOOP3)

//to check if the element is the last digit or not
@Pointer1
D=M
@30
D=D-A
@LASTDIGIT
D;JEQ
@check

//Checking whether first number is greater or lesser than the //other
(check)
@Pointer1
A=M
D=M
@Pointer2
A=M
D=D-M
@GREATER
D;JGT
@LESSER
D;JLT


//Incrementing the address in the pointer to the next address
@Pointer1
M=M+1
@Pointer2
M=M+1
@LOOP3
0;JMP

(LASTDIGIT)
@Pointer1
A=M
D=M
@Pointer2
A=M
D=D-M
@EQUAL
D;JEQ
@check
D;JNE

//(End3)
	(EQUAL)
	@R0
	M=0
	@END
	0;JMP
	(GREATER)
	@R0
	M=1
	@END
	0;JMP
	(LESSER)	
	@0
	D=A-1
	@R0
	M=D
//Unconditional infinite loop
	(END)
	@END
	0;JMP
