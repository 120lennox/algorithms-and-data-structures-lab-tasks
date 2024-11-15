# repeating print name and age program
# author: Lennox Mountain, 2nd day

.text
main:
	# prompts to enter name
	li $v0, 4
	la $a0, prompt_girlfriend
	syscall
	
	# read girlfriend
	li $v0, 8
	la $a0, buffer_size
	li $a1, 101
	syscall
	
	# prompt age
	li $v0, 4
	la $a0, prompt_age
	syscall
	
	# read age
	li $v0, 5
	syscall
	move $s0, $v0
	
	# output gf name
	li $v0, 4
	la $a0, output_gfName
	syscall
	la $a0, buffer_size
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
prompt_girlfriend: .asciiz "What's your girl's name: "
prompt_age: .asciiz "\nWhat's your girl's age: "
output_gfName: .asciiz "\nYour girl's name is: "
output_age: .asciiz "\nHer age is: "
.align 2
buffer_size: .space 100
	
	
	
	
	
	