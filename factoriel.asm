%include "io64.inc"

section .data
    f dq 5
section .text
global CMAIN
CMAIN:
    mov rbp, rsp; for correct debugging
    mov rax, [f]
    mov rcx, [f]
    
factoriel:
    cmp rcx, 1
    je exit
    
    sub rcx, 1
    mov rbx, rcx
    mul rbx
    jmp factoriel
        
exit:     
    PRINT_DEC 0x1, rax       
    xor rax, rax
    ret