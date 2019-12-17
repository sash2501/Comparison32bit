# Comparison32bit

To meet the requirement of the question of taking two 32 bit numbers as input from the user, the following methods are used:
A 32 bit number consists of maximum of 10 digits.
The largest 32 bit number is 232-1, i.e. 4,294,967,295, which is a 10 digit number.
To take a 10 digit number as input we used the concept of arrays in ASSEMBLY Language.

### FIRST NUMBER:
To take the input of the first 32 bit number we used an array which consists of :
- A label named as LOOP1 and 
- A variable named as Pointer1.
- A label named End1
The base address for the first 32 bit number is taken to be register 21 by default.
So, for Number1, the 10 digits are stored from address 21 to 30.
The input is taken from the keyboard default variable KBD.	

 The LOOP1 contains instruction for ; 
- Number of digits stored
- Number of digits yet to be stored.
This ensures that no more digits are added after the 10 digits are stored.
The ASCII value stored the address of the KBD variable in then stored in the address that is currently stored in the Pointer1 variable.
The address stored in the Pointer1variable is then incremented to the next value to go to the next element of the array.
This way the loop continues till all the 10 digits of the 32 bit number are stored.

Once all the 10 digits are stored in the memory, the number of digits left to be stored in the array becomes equal to zero, and upon satisfying the condition, comes out of the LOOP1 to the End1 label.
The program then continues to store the second 32 bit input that has to be given by the user.

LOOP2 stores the second 32 bit number given by the user.

### SECOND NUMBER:
To take the input of the second 32 bit number we used an array which consists of :
- A label named as LOOP2
- A variable named as Pointer2.
- A label named End2
The base address for the first 32 bit number is taken to be register 41 by default.
So, for Number2, the 10 digits are stored from address 41 to 50.
The input is taken from the keyboard default variable KBD.	

 The LOOP2 contains; 
- Number of digits stored
- Number of digits yet to be stored.
This ensures that no more digits are added after the 10 digits are stored.
The ASCII value stored the address of the KBD variable in then stored in the address that is currently stored in the Pointer2 variable.
The address stored in the Pointer variable is then incremented to the next value to go to the next element of the array.

This way the loop continues till all the 10 digits are stored.

Once all the 10 digits are stored in the memory, the number of digits left to be stored in the array becomes equal to zero, and upon satisfying the condition, comes out of the LOOP2 to the End2 label.


## COMPARISION OF THE TWO NUMBERS:

Usually, the comparison between two numbers is done by comparing the corresponding place values starting from the left most digit, i.e. for a 3 digit number, first compare the hundred’s place. If digit in the hundred’s place  is  greater or lesser than the one in the second 32 bit number, the whole 3 digit number is greater or lesser than the other respectively. However if they both are equal, we check the next consicutive digit.

To do the comparison between the two 32 bit numbers, the following labels and variables are used :
- A label named as LOOP3 
- Variables named Pointer1 and Pointer2.
- A label named End

   When we apply this concept in ASSEMBLY language program the following points should be considered :
    - If the most significant unit of the two given numbers are not equal, the values 1 or -1 will be stored in a register,with respect to condition ,corresponding values will be printed.
The pointers (Pointer1 and Pointer2) are reinitialized to point to the first element of the array. This is done so that the pointer can iterate through the array once again to compare the elements.
The pointers then enter LOOP3, where comparison between numbers happens.
    - If the most significant units are equal then the pointer continues on to the next element (in the left to right order).
For each element of the array, the pointer checks whether it is the last digit and compares them. If the element is the last digit, it goes to the label LASTDIGIT, where the equality between the elements in checked.
  The pointer keeps on checking the next element for inequality. However, if it doesn’t come across any inequality in the first 9 digits, the least significant unit (the last digit) decides whether the two 32 bit numbers are equal or not.

    - If a digit of the first 32 bit number is greater than its corresponding digit in the second 32 bit number, the pointer comes out of the loop to the GREATER label.
Here, the value 1 is stored in register
    - If a digit of the first 32 bit number is greater than its corresponding digit in the second 32 bit number, the pointer comes out of the loop to the LESSER label.
Here, the value -1 is stored in register by first loading @0 and then subtracting 1 from it.
    - If the last digit of the two numbers is equal the numbers contained in the array are equal , the pointer comes out of the loop to the EQUAL label, where value 0 isstored in the register.
And finally, there is the END label which has the infinite loop that ends the program  ☺.
