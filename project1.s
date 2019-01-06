.globl main
.data
message: .asciiz "After for loop is done"
intarray:
    .word   1
    .word   5
    .word   -3
    .word   6
    .word   12
    .word   21
    .word   18
    .word   44
    .word   32
    .word   9
    .word   23
    .word   10
    .word   11
    .word   99
    .word   100
    .word   24
.text
	lui $sp 0x8000 #initialize the stack pointer
    main:
    	addiu $sp,$sp,-12 #stack grows by 12 bytes
    	sw $ra, 8($sp) #save return address into stack
    	sw $s0, 4($sp) #store $s0 so it can be used for littleindex
    	sw $s1, 0($sp) #store $s1 so it can be used for i
    	#jal swap $s0 #perform operations in code up to call to "swap"
    	#... #include any number of instructions you need
    	li $t0, -1
    	addi $t1, $zero, 15 # $t1 = index, i = ARRAYSIZE-1
   	loop:	# MIPS code for the init expression
	    beq $t1, $t0, exit
	    	move $t3, $s0
	    	move $t4, $s1
	        beq $t3, $t4, endIf
	        move $t0, $t1
	        endIf:
   	    sub $s1, $s1, 1
   	    j loop
  	exit:
   	    li $v0, 4
   	    la $a0, message
   	    syscall
    	
    	
    	addi $a0, $s0, 0 #pass the argument to the swap function
    	jal swap #call sub function swap
        nop #put in breakpoint here to show memory
    	lw $s0, 0($sp) #restore $s0 from stack
    	lw $s0, 4($sp) #restore $s1 from stack
    	jr $ra #restore return address
    	# ... #shrink stack
    	lw $ra, 8($sp)
    	lw $s0, 4($sp)
    	lw $s1, 0($sp)
    	li $v0, 10 #return
    	syscall
# swap branch
    swap:
    	sll $t1, $a1, 2
    	add $t1, $a0, $t1
    	lw $t0, 60($t1)
    	jr $ra
    	
