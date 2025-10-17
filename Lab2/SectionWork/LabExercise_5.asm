.data
prompt: .asciiz "Enter the number of values(n): "
sum: .asciiz "Sum =  "
newLine: .asciiz "\n"

.text
main:
    li $v0,4
    la $a0,prompt
    syscall

    li $v0,5
    syscall
    move $a0,$v0
    li $t0,1
    li $t1,0
forLoop:
    bgt $t0,$a0,endLoop
    add $t1,$t1,$t0
    addi $t0,$t0,1
    j forLoop
endLoop:
    li $v0,4
    la $a0,sum
    syscall

    move $a0,$t1
    li $v0,1
    syscall

    li $v0,4
    la $a0,newLine
    syscall

Exit:
    li $v0,10
    syscall