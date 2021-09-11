%include "io64.inc"

section .data
    num1 dq 89
    num2 dq 67
    num3 dq 33
section .text
global CMAIN
CMAIN:
    mov rbp, rsp; for correct debugging
    
    mov rax, [num1]
    cmp rax, [num2]
    jl chk3
    mov rax, [num2]
    
    chk3:
    cmp rax, [num3]
    jl exit
    mov rax, [num3]
    
    exit:
    xor rax, rax
    ret