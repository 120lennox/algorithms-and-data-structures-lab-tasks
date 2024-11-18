.text
main:
	li $t1, 100
	li $t2, 9
	
	div $t0, $t1, $t2
	
	li $v0, 1
	move $a0, $t0
	syscall
	
	li $v0, 10
	syscall

.data