# program solves a quadratic equation
# author: Lennox Mountain 
# problem: 5*x*x + 2* x + 3

.text
main:
	# enter value of x
	li $v0, 4
	la $a0, x
	syscall
	
	# read x
	li $v0, 5
	syscall
	move $s1, $v0
	syscall
	
	# calculate 5*x*x + 2* x + 3
	mul $t1, $s1, $s1
	mul $t2, $t1, 5
	mul $t3, $s1, 2
	add $t0, $t2, $t3
	add $s0, $t0, 3
	
	# print rersults
	li $v0, 4
	la $a0, result
	syscall
	
	# print int
	li $v0, 1
	syscall
	move $a0, $s0
	
	# exit
	li $v0, 10
	syscall
	
.data
x: .asciiz "Enter value x: "
result: .asciiz "\nY is: "