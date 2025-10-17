.data
firstNumber: .asciiz "Enter The First Number: "
secondNumber: .asciiz "Enter The Second Number: "
result: .asciiz "Sum Of Numbers: "
newLine: .asciiz "\n"

.text
main:
    li $v0,4
    la $a0,firstNumber
    syscall

    li $v0,5
    syscall
    move $t0,$v0
    
    li $v0,4
    la $a0,secondNumber
    syscall

    li $v0,5
    syscall
    move $t1,$v0

    li $v0,4
    la $a0,result
    syscall

    addu $a0 , $t0 , $t1

    li $v0 , 1
    syscall

    li $v0,4
    la $a0,newLine
    syscall
Exit:
    li $v0 , 10
    syscall






