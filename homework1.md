# homework1
## 1.
a. f = x*4 + y - z

b. f = z + 24 - x + y/2
### Q. For each C statement above, what is the corresponding MIPS code?
	a.
	 sll $s1, $s1, 2
	 add $s0, $s1, $s2
	 sub $s0, $s0, $s3
	b.
	 addi $s0, $s3, 24
	 sub  $s0, $s0, $s1
	 srl  $s2, $s2, 1
	 add  $s0, $s0, $s2
### Q. How many bits are needed to encode the above instructions for each C statement?
	a. 3*32 = 96 bits
	b. 4*32 = 128 bits
### Q. How many bits are needed in the register file to store the data for each C statement?
	a. 4*32 = 128 bits
	b. 4*32 = 128 bits
	
a. addi $s0, $s1, -100

b. sll $s0, $s0, 4
### Q. How can the two MIPS instructions above be represented using C code?
	a. f = x - 100
	b. f = f * 16
### Q. Why are constants in I-type instructions represented in 2's complement format?
	(1) Simplify the operation rules by enabling the sign bit to participate in the operation together with the rms part.
	(2) Converting the subtraction operation into an addition operation, further simplifying the circuit design of the arithmetic unit in the computer.
### Q. What is the largest value (in decimal) that can be represented in the immediate filed of an I-type instruction?
	2^15-1
## 2.
### Q. For the C statements above, what is the corresponding MIPS assembly code?
	a. lw $t1, 4($s1)
	   lw $t2, 4($s2)
	   lw $t3, 12($2)
	   add $t1, $t1, $t2
	   add $t1, $t1, $t3
	   sw  $t1, 4($3)
	b. lw  $t1, 8($s1)
	   lw  $t2, 8($s2)
	   sub $t1, $t1, $t2
	   sw  $t1, 8($s3)
### Q. For the C statements above, how many MIPS assembly instructions are needed to perform each C statement?
	a. 6
	b. 4
### Q. For the C statements, how many different registers are needed to carry out the C statements.
	a. 6
	b. 5
## 3.
### Q. What is the value of G?
	a. G=D2=1
	b. G=D5=0
## 4.
### Q. Translate the following MIPS code to C code.
  ```
  if(i == j)
	f = g + h;
   else
	f = f + 1;
  ```

## 5. 
### Q.For the binary entries above, what MIPS instructions do they represent?
	a. addi $s7, $t0, 16
	b. add  $s0  $t0, $t1
### Q. What type (I-type, R-type) instruction do the binary entries represent?
	a. I-type
	b. R-type
## 6.
### Q.For the instructions above, show the hexadecimal representations of the instructions.
	a. 0x012A8022(000000 01001 01010 10000 00000 100010)
	b. 0x8D100008(100011 01000 10000 0000000000001000)
### Q.Indicate the type of each instruction
	a. R-type
	b. I-type
### Q.Show the hexadecimal value of each field of each instruction
	a. 0 9 A 10 0 22
	b. 23 8 10 8
## 7. 
### Patterson and Hennessy; Exercises 2.18.1:
	opcode would be 8 bits, rs, rt, rd fields all would be 7 bits, because Log2(128)=7

### Patterson and Hennessy; Exercises 2.18.2:
	opcode would be 8 bits, rs and rt fields all would be 7 bits, because Log2(128)=7
