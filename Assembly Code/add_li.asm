# this code implements the add operation but this time with li instruction
# author Lennox mountain

.text 
main:
	# prompt user
	li $v0, 4
	la $a0, prompt
	syscall
	
	# read integer
	li $v0, 5
	syscall
	move $s1, $v0
	
	# prompt user
	li $v0, 4
	la $a0, prompt2
	syscall
	
	# read integer
	li $v0, 5
	syscall
	move $s2, $v0
	
	# add numbers
	add $s0, $s1, $s2
	
	# output
	li $v0, 4
	la $a0, output
	syscall
	
	# print answer
	li $v0, 1
	move $a0, $s0
	syscall
	
	# close program
	li $v0, 10
	syscall

.data
prompt: .asciiz "Enter number first: "
prompt2: .asciiz "\nEnter second number: "
output: .asciiz "\nthe sum is: "
	