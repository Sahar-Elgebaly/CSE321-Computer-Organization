.data
number1: .asciiz "Enter The First Number: "
number2: .asciiz "Enter The Second Number: "
number3: .asciiz "Enter The third Number: "
number4: .asciiz "Enter The fourth Number: "

remainder: .asciiz " With Remainder "
result: .asciiz "The average of the four numbers is: "
newLine: .asciiz "\n"

.text
main:
    li $v0,4
    la $a0,number1
    syscall

    li $v0,5
    syscall
    move $t0,$v0

    li $v0,4
    la $a0,number2
    syscall

    li $v0,5
    syscall
    move $t1,$v0

    li $v0,4
    la $a0,number3
    syscall

    li $v0,5
    syscall
    move $t2,$v0

    li $v0,4
    la $a0,number4
    syscall

    li $v0,5
    syscall
    move $t3,$v0

    li $v0,4
    la $a0,result
    syscall
    
    #result = ((t0+t1)+t2)+t3
    addu $t4 , $t0 ,$t1
    addu $t4 , $t4 , $t2
    addu $t4 , $t4 , $t3

    li $t5 ,4
    div $t4,$t5
    mflo $a0
    mfhi $t0
    
    li $v0,1
    syscall

    li $v0,4
    la $a0,remainder
    syscall

    move $a0 , $t0

    li $v0,1
    syscall

    li $v0,4
    la $a0,newLine
    syscall
Exit: 
    li $v0 , 10
    syscall
