%include "io64.inc"

section .data
    power equ 3
    base dq 2
section .text
global CMAIN
CMAIN:
    mov rbp, rsp; for correct debugging
    ;write your code here
    
    
    mov rcx, power
    mov rax, [base]
    mov rbx, [base]
    
find_power:
    cmp rcx, 0
    je exit
    mul rbx
    dec rcx
    jmp find_power
    
    exit:
    xor rax, rax
    ret