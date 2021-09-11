%include "io64.inc"

section .data
    a dq 0
    b dq 1
    
    iter dq 1
    
    fib dq 9
    mem dq 0
section .text
global CMAIN
CMAIN:
    mov rbp, rsp; for correct debugging
    
    mov rax, [fib]
    cmp rax, 0
    jl break
    je break

    cmp rax, 1
    je break
    mov rcx, [iter]
    jmp for_loop
    
for_loop:
    cmp rcx, [fib]
    jg break
    
    PRINT_UDEC 0x1, [b]
    NEWLINE
    
    mov rax, [a]
    mov rbx, [b]
    add rax, rbx
    mov [mem], rax
    
    mov [a], rbx
    mov rax, [mem]
    mov [b], rax
    inc rcx
    jmp for_loop    
    
break:
    xor rax, rax
    ret