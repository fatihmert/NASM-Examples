%include "io64.inc"

section .data
    num1 dq 05
    num2 dq 10
    num3 dq 33
    
section .text
global CMAIN
CMAIN:
    mov rbp, rsp; for correct debugging
    
    mov rax, [num1]
    cmp rax, [num2]
    jg check3 ; rax > [num2]
    mov rax, [num2] ; else
    
    
    check3:
    cmp rax, [num3]
    jg _exit
    mov rax, [num3]
    
    
    _exit:
    xor rax, rax
    ret