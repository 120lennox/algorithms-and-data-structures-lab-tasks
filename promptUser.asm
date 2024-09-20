# Program prompts the user to enter a number and reads it and print  it back to console
# Author: Lennox Mountain, 3rd year, University of Malawi

.text 
main:
	# prompting the user
	li $v0, 4
	la $a0, prompt
	syscall
	
	# reading the integer value and saving it in register $s0
	li $v0, 5
	syscall
	move $s0, $v0
	
	# Outing the text
	li $v0, 4
	la $a0, output
	syscall
	
	# outputing the number 
	li $v0, 1
	move $a0, $s0
	syscall
	
	# exiting program
	li $v0, 10
	syscall

.data
prompt: .asciiz "Please enter the enter: "
output: .asciiz "\n You typed the number "