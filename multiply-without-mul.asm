%include "io64.inc"

section .data
    n1 dq 5
    n2 dq 3
    
    result dq 0
section .text
global CMAIN
CMAIN:
    mov rbp, rsp; for correct debugging
    mov rax, [n1]
    mov rcx, [n2]
    
    multiply:
    cmp rcx, 1
    je exit
    add rax, [n1]
    dec rcx
    jmp multiply
    
    exit:
    xor rax, rax
    ret