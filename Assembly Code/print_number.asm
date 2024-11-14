#prints integer to console
#Author: Lennox Mountain: Day 1

.text
main:
	# instructions to tell the computer to output a string on console
	li $v0, 4
	la $a0, prompt
	syscall
	
	# instruction to read an integer and save  it in address $s0
	# immidiate value 5 means load integer
	
	li $v0, 5
	syscall
	move $s0, $v0
	
	#output the text (in this case the text that tells user they entered such such integer)
	li $v0, 4
	la $a0, output
	syscall
	
	# output number entered by user
	li $v0, 1
	move $a0, $s0
	syscall
	
	# exit program
	li $v0, 10
	syscall
	
.data
prompt: .asciiz "Enter number: "
output: .asciiz "\n you entered: "
	
	