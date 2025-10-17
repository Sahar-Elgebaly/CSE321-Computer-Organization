.data 
prompt: .asciiz "Enter the number of values(n): "
num: .asciiz "Number= "
avg: .asciiz "Average=  "
remainder: .asciiz " With Remainder "
newLine: .asciiz "\n"

.text
main:
    li $v0,4
    la $a0,prompt
    syscall

    li $v0,5
    syscall
    move $t0,$v0

    li $t1,1
    li $t2,0

forLoop:
    bgt $t1,$t0,endLoop

    li $v0,4
    la $a0,num
    syscall

    li $v0,5
    syscall
    add $t2,$t2,$v0

    addi $t1,$t1,1
    j forLoop
endLoop:
    li $v0,4
    la $a0,avg
    syscall
    
    div $t2,$t0
    mflo $t1
    mfhi $t2
    
    move $a0,$t1
    li $v0,1
    syscall
    
    li $v0,4
    la $a0,remainder
    syscall

    move $a0,$t2
    li $v0,1
    syscall
 
    li $v0,4
    la $a0,newLine
    syscall
    
Exit:
    li $v0,10
    syscall