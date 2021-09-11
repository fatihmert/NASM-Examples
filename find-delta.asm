%include "io64.inc"

; find delta
; delta = b^2 - 4ac
; 4x^2-16x+16

section .data
    a dq 4
    b dq 16
    c dq 16
    
    delta dq 0
section .text
global CMAIN
CMAIN:
    mov rbp, rsp; for correct debugging
    mov rax, [b]
    mul rax
    mov [delta], rax
    
    mov rax, [a]
    mov rbx, [c]
    mul rbx
    
    mov rbx, 4
    mul rbx
    sub [delta], rax
    

    xor rax, rax
    ret