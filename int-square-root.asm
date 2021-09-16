%include "io64.inc"

; n^2 = sum of first n odd numbers.
; e.g., 16 = 4^2 = 1+3+5+7 (first 4 odd numbers)

; Not find root result to -1

section .data
    num dq 12
section .text
global CMAIN
CMAIN:
    mov rbp, rsp; for correct debugging
    mov rax, [num]
    mov rbx, 0 ; calc for odd num
    mov rcx, 0 ; odd counter
    mov rdx, [num] ; reducing
    
count_odd_number:
    inc rbx
    test rbx, 1
    jnz is_odd
    cmp rdx, 0
    je find
    jmp count_odd_number


is_odd:
    inc rcx
    sub rdx, rbx
    cmp rdx, 0
    jl not_find
    jmp count_odd_number

find:
    PRINT_DEC 0x1, rcx
    xor rax, rax
    ret
    
not_find:
    PRINT_DEC 0x1, -1
    xor rax, rax
    ret
    
    