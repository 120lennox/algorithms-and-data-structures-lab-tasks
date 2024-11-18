.text
.globl main
main:
    # Print first prompt
    li $v0, 4
    la $a0, prompt
    syscall
    
    # Read first number
    li $v0, 5
    syscall
    move $s1, $v0
    
    # Print second prompt
    li $v0, 4
    la $a0, prompt2
    syscall
    
    # Read second number
    li $v0, 5
    syscall
    move $s2, $v0
    
    # Multiply two numbers
    mult $s1, $s2
    mflo $a0  # Move result to $a0
    
    # Print result label
    li $v0, 4
    la $a0, output
    syscall
    
    # Print actual result
    li $v0, 1
    syscall  # Use $a0 which already contains the result
    
    # Exit
    li $v0, 10
    syscall

.data
prompt: .asciiz "Enter number: "
prompt2: .asciiz "\nEnter another number: "
output: .asciiz "\nThe product is: "