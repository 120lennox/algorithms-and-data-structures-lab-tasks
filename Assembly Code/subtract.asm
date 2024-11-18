# the code subtracts numbers 
# author lennox mountain

.text
main:
	# prompt user
	li $v0, 4
	la $a0, prompt
	syscall
	
	# read int
	li $v0, 5
	syscall
	move $s1, $v0
	
	# prompt user 
	li $v0, 4
	la $a0, prompt2
	syscall
	
	# read int
	li $v0, 5
	syscall
	move $s2, $v0
	
	# subtraction
	sub $s0, $s1, $s2
	
	# output text
	li $v0, 4
	la $a0, output
	syscall
	
	# ouput answer
	li $v0, 1
	move $a0, $s0
	syscall
	
	# close program
	li $v0, 10
	syscall
	
.data
prompt: .asciiz "Enter number: "
prompt2: .asciiz "\nEnter anothet number: "
output: .asciiz "\nThe difference is: "	
	
	
	
	