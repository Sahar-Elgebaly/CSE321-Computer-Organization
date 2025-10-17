.data
prompt: .asciiz "Enter an Integer Number: "
posMsg: .asciiz "Positive\n"
negMsg: .asciiz "Negative\n"
zeroMsg: .asciiz "Zero\n"


.text
main:
    li $v0,4
    la $a0,prompt
    syscall

    li $v0,5
    syscall

    move $t0 , $v0
if:
    bne $t0,$zero,elsif
    la $a0,zeroMsg
    j endif
elsif:
    bgtz $t0,else
    la $a0,negMsg
    j endif 
else:
    la $a0,posMsg
    j endif 
endif: 
    li $v0,4 
    syscall   

Exit:
    li $v0,10
    syscall    