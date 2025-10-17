.data
prompt: .asciiz "Enter a number between 1 and 3:"
firstNumber: .asciiz "Enter The First Number: "
secondNumber: .asciiz "Enter The Second Number: "
sum: .asciiz "Sum = "
subt: .asciiz "Sub = "
multt: .asciiz "Mult= "
newLine: .asciiz "\n"

.text
main:
    li $v0,4
    la $a0,prompt
    syscall

    li $v0,5
    syscall
    move $t0,$v0

    li $v0,4
    la $a0,firstNumber
    syscall

    li $v0,5
    syscall
    move $t1,$v0
    
    li $v0,4
    la $a0,secondNumber
    syscall

    li $v0,5
    syscall
    move $t2,$v0

case1:
    bne $t0,1,case2
    add $t1,$t1,$t2
    li $v0,4
    la $a0,sum
    syscall
    move $a0,$t1
    li $v0,1
    syscall

    j endSwitch
case2:
    bne $t0,2,case3
    sub $t1,$t1,$t2
    li $v0,4
    la $a0,subt
    syscall
    move $a0,$t1
    li $v0,1
    syscall

    j endSwitch
case3:
    bne $t0,3,defaultCase
    mul $t1,$t1,$t2
    li $v0,4
    la $a0,multt
    syscall
    move $a0,$t1
    li $v0,1
    syscall

    j endSwitch
defaultCase:
    j main
endSwitch:
    li $v0,4
    la $a0,newLine
    syscall
Exit:
    li $v0,10
    syscall
