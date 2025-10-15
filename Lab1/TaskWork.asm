.data 
Name: .asciiz "Name: Sahar Gamal Soliman\n"
ID: .asciiz "ID: 304093003003030300\n"
Course: .asciiz "Course: CSE321-Computer-Organization\n"

.text
main:
    li $v0,4
    la $a0,Name
    syscall

    li $v0,4
    la $a0,ID
    syscall

    li $v0,4
    la $a0,Course
    syscall

    li $v0,10
    syscall