global show_number
extern printi

global print_row
extern putchar
section .text

show_number:
    mov edi, 42
    mov al, 0
    call printi
    ret
