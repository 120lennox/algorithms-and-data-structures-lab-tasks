# add numbers using the basic add, add operator
# author: Lennox Mountain, 3rd day

.text 
main:
	# print text first 
	li $v0, 4
	la $a0, output
	syscall
	
	# add numbers 
	li $t1, 100
	li $t2, 100
	add $t0, $t1, $t2
	
	# print results
	li $v0, 1
	move $a0, $t0
	syscall
	
	# exit program
	li $v0, 10
	syscall

.data
output: .asciiz "The result is: "