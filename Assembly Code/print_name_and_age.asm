# program that prints name os user and age
# author: Lennox Mountain

.text
main:
	# prompts user to enter name
	li $v0, 4
	la $a0, prompt_name
	syscall
	
	# reads the name
	li $v0, 8
	la $a0, name_buffer
	li $a1, 101
	syscall
	
	# prompts user to enter age
	li $v0, 4
	la $a0, prompt_age
	syscall
	
	# read age
	li $v0, 5
	syscall
	move $s0, $v0
	
	# output name
	li $v0, 4
	la $a0, output_name
	syscall
	la $a0 name_buffer
	syscall
	
	# output age
	li $v0, 4
	la $a0, output_age
	syscall
	li $v0, 1
	move $a0, $s0
	syscall
	
	# exit program
	li $v0, 10
	syscall

.data
prompt_name: .asciiz "What is your name: "
prompt_age: .asciiz "\n age: "
output_name: .asciiz "\n Your name is: "
output_age: .asciiz "\n Your age is: "
.align 2
name_buffer: .space 100
	