# hello world in mips 
#author Lennox Mountain 3rd year, University of Malawi
.text
main:
	li $v0, 1
	lw $a0, number
	syscall
	
	li $v0, 10
	syscall

.data
number: .word 1
