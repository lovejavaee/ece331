# homework2

## 1
### j:
jump to destination address，The address in the instruction is a word address, so it needs to be multiplied by 4 to convert to a byte address.
### jal:
 jump and link，The address in the instruction is also a word address, multiplied by 4 to convert to a byte address.Generally used for the main program call function when the jump, set the return address of the function in the main program jump instruction next instruction, meaning that after the execution of the function will have to go back to the main program to continue to execute.The register $ra is used specifically to hold the return address of the function.
### jr:
 jump to the location indicated in the register，Jump to the address in the register.Generally used for function execution after the return of the main function jump.
### beq:
Conditional branch instruction that occurs when the contents of two registers are equal

## 2
### Does overflow occur in this case?
  No
### How do you know?
  Si=Xi⊕Yi⊕Ci，Ci+1 = Xi•Yi+Ci•(Xi+Yi)
  => C1=1,S0=0; C2=1,S1=0; C3=1,S2=0; C4=0,S3=1;
### Suppose the values are four bit 2’s complement values. Does overflow occur if the two values are added in this case?
  Yes
### How do you know?
  Si=Xi⊕Yi⊕Ci，Ci+1=Xi•Yi+Ci•(Xi+Yi)
  => C1=1,s0=0; C2=1,S1=0; C3=1,S2=0; C4=1,S3=1;

## 3
### a. 
  two
  ![(a)](https://github.com/lovejavaee/ece331/blob/homework2/images/3-a.png?raw=true)
### b.
  so 3*5=15
   ![(b)](https://github.com/lovejavaee/ece331/blob/homework2/images/3-b.png?raw=true)
### c.
  T=(3-1)*20+max(10,20)=60ns
## 4
 ![4-a](https://github.com/lovejavaee/ece331/blob/homework2/images/4-a.png?raw=true)
 ![4-b](https://github.com/lovejavaee/ece331/blob/homework2/images/4-b.png?raw=true)
 ![4-c](https://github.com/lovejavaee/ece331/blob/homework2/images/4-c.png?raw=true)
## 5
![5-a](https://github.com/lovejavaee/ece331/blob/homework2/images/5-a.png?raw=true)
![5-b](https://github.com/lovejavaee/ece331/blob/homework2/images/5-b.png?raw=true)
![5-c](https://github.com/lovejavaee/ece331/blob/homework2/images/5-c.png?raw=true)
![5-d](https://github.com/lovejavaee/ece331/blob/homework2/images/5-d.png?raw=true)

## 6

In integers, by using 2's complement for negative numbers makes the arithmetic easy; 
we can add two numbers together without thinking about whether number is positive or negative, and get the right answer.
This won't work for floating point numbers because the exponents need to be manipulated; if we are using a 2's complement representation for the entire word we'd have to reconstruct the exponent any time we wanted to add or subtract, so it wouldn't gain us anything; in fact, trying to do arithmetic involving a negative number would involve converting it to positive first.The exponent = 0 can be used to represent the smallest number.
To represent NaN (Not a number) : if all bits of exponent are 1, and any of the mantissa bits are 1.

## 7
![7-a](https://github.com/lovejavaee/ece331/blob/homework2/images/7-a.png?raw=true)
![7-b](https://github.com/lovejavaee/ece331/blob/homework2/images/7-b.png?raw=true)
