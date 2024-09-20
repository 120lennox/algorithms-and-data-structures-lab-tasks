# hello world in mips 
#author Lennox Mountain 3rd year, University of Malawi
.text
main:
	li $v0, 4
	la $a0, greeting
	syscall 
	
	li $v0, 10
	syscall
greeting: .asciz "Hello world"