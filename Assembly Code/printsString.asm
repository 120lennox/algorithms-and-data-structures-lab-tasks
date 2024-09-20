# Program prompts user to enter a string reads it omn console
# Author: Lennox Mountain. 3rd year, University of Malawi

.text
main: 
	# prompt user to enter string
	li $v0, 4
	la $a0, prompt
	syscall
	
	# reading the string
	li $v0, 8
	la $a0, input
	li $a1, 100
	syscall
	
	# Outputing the text
	li $v0, 4
	la $a0, output
	syscall
	
	# Outputing the number 
	li $v0, 4
	la $a0, input
	syscall
	
	# exiting the program
	li $v0, 10
	syscall

.data 
input:	.space 100
prompt: .asciiz "enter string: "
output: .asciiz "\nyou entered: "
	
	
	