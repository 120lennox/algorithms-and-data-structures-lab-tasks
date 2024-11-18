# this program prompts the user to enter numbers
# it then attempts to add the numbers entered by the user
# author: Lennox Mountain
# main 
#	{
#		register int i = input("enter number: ")
#		register int j = input("enter second number")
#		register int k = i + j
#		print("result is " k)
#	}

# pretty much what the program does

.text
.globl main
main:
	# register int i = input("enter number: ")
	addi $v0, $zero, 4
	la $a0, prompt1
	syscall
	addi $v0, $zero, 5 # reads the number and store it in address $v0
	syscall
	move $s0, $v0 # moves the stored number to address $s0
	
	# register int j = input("enter second number")
	addi $v0, $zero, 4
	la $a0, prompt2
	syscall
	add $v0, $zero, 5
	syscall
	move $s1, $v0
	
	# register int k = i + j
	add $s2, $s1, $s0
	
	addi $v0, $zero, 4
	la $a0, result
	syscall
	addi $v0, $zero, 1
	move $a0, $s2
	
	addi $v0, $zero, 10
	syscall
	
.data
prompt1: .asciiz "Enter the first value: "
prompt2: .asciiz "\nEnter the second value: "
result: .asciiz "\nThe answer is: "
	
	
	