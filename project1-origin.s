.globl main
.data
intarray:
.word 1
.word -4
.word 5
.word 6
.word 12
.word 21
.word 18
.word 44
.word 32
.word 9
.word 23
.word 10
.word 11
.word 99
.word 100
.word 23
.text
lui $sp 0x8000 #initialize the stack pointer
main:
addiu $sp,$sp,-12 #stack grows by 12 bytes
sw $ra,8($sp) #save return address into stack
sw $s0,4($sp) #store $s0 so it can be used for littleindex
sw $s1,0($sp) #store $s1 so it can be used for i
... #perform operations in code up to call to "swap"
... #include any number of instructions you need
...
addi $a0,$s0,0 #pass the argument to the swap function
... #call sub function swap
nop #put in breakpoint here to show memory
... #restore $s0 from stack
... #restore $s1 from stack
... #restore return address
... #shrink stack
... #return
swap:
# your own code II