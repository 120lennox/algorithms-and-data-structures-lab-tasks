#print string 
#author: Lennox Mountain 

.text
main:
	li $v0, 4
	la $a0, say_hi
	syscall
	
	li $v0, 10
	syscall

.data
say_hi: .asciiz "Hayi hayii"
