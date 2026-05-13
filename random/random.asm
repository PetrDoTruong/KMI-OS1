global vypocet

section .text

vypocet:
    mov rax, rdi    ; do rax uložím long a = 2
    add rax, rsi    ; sečtu a + b
    imul rax, rdx   ; vynásobím s rdx
    ret