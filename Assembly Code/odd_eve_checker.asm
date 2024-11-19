# odd or even checker
# author Lennox Mountains

.text
main:
	# prompt
	li $v0, 4
	la $a0, prompt
	syscall
	
	# read int
	li $v0, 5
	syscall
	move $s1, $v0
	
	div $s0, $s1, 2
	mfhi $s2 # save remainder in in $s2
	
	# print text
	li $v0, 4
	la $a0, result
	syscall
	
	#print integer
	li $v0, 1
	move $a0, $s2
	syscall 
	
	# exit program
	li $v0, 10
	syscall
	
.data
prompt: .asciiz "Enter number: "
result: .asciiz "if 0 is even, if 1 odd: "
