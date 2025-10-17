.data
prompt: .asciiz "Enter The Number: "
result: .asciiz "Sum of All Inputs: "
newLine: .asciiz "\n"

.text
main:
    li $t0,0
doWhile:
    li $v0,4
    la $a0,prompt
    syscall

    li $v0,5
    syscall
    move $a0,$v0

    beq $a0,$zero,endLoop
    add $t0,$t0,$a0
    j doWhile
endLoop:
    li $v0,4
    la $a0,result
    syscall

    move $a0,$t0
    li $v0,1
    syscall

    li $v0,4
    la $a0,newLine
    syscall
Exit:
    li $v0,10
    syscall
    