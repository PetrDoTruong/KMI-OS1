global vypocet
global aritmetika
global kombinace
global divide_and_store
global ordered
global length

section .text

vypocet:
    mov rax, rdi    ; do rax uložím long a = 2
    add rax, rsi    ; sečtu a + b
    imul rax, rdx   ; vynásobím s rdx
    ret

aritmetika:
    mov rax, rdi    ; ulozim hodnotu a
    sub rax, rsi    ; odečtu b
    add rax, rdx    ; přičtu c
    ret

kombinace:
    mov rax, rdi    ; ulozim promennou a
    add rax, rsi    ; sečtu a+b
    add rdx, rcx    ; sečtu c + d = výsledek v rdx
    sub rax, rdx
    ret

    ; rdi, rsi, rdx, rcx, r8, r9
divide_and_store:
    mov eax, edi    ; ulozime a
    push rdx        ; schovám si pointer q
    mov edx, 0      ; vynuluju před dělením
    idiv esi        ; vydělím a/b, výsledek v eax, zbytek v edx

    mov [rcx], edx  ; na 4. argument kam ukazuje pointer, uložím zbytek
    pop rdx         ; vrátím pointer ze stacku
    mov [rdx], eax
    ret

ordered:
    mov ax, [rdi]    ; z 1. pointeru uložím hodnotu
    mov bx, [rsi]    ; z 2. pointeru uložím do bx
    cmp ax, bx
    jb b_greater
    ret
b_greater:
    mov word [rdi], bx
    mov word [rsi], ax
    ret

length:
    mov rax, 0      ; counter
cyklus:
    cmp byte [rdi], 0
    je end
    inc rdi
    inc rax
    jmp cyklus
end:
    ret