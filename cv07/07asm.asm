global _start
; deklarace konstant
SYS_EXIT equ 60     ; systemove volani pro ukonceni programu
SYS_WRITE equ 1     ; systemove volani pro zapis do souboru
STDOUT equ 1        ; deskriptor souboru standardniho vystupu
STR_LEN equ 6       ; delka vypsaneho retezce
; spustitelny kod
section .text
_start:
    mov rbx, 20     ; počítadlo, kolikrát se vytiskne
loop:
    mov rax, SYS_WRITE
    mov rdi, STDOUT
    mov rsi, str_star
    mov rdx, STR_LEN
    syscall

    dec rbx
    jnz loop

    mov rax, SYS_EXIT
    mov rdi, 0          ; nulujeme návratový kód "return 0"
    syscall

; (inicializovana) data programu
section .data
str_star:
    db "*****", 10