global sgn
global max2c
global max3us

section .text

; funkce sgn(i), vrátí -1, 0, 1 pokud je i < 0/ = 0/ > 0
sgn:
    mov eax, edi    ; do registru eax, uložím proměnnou
    cmp eax, 0      ; cmp = compare, porovnáme hodnotu uloženou v registru s 0
    jg is_greater   ; skok na návěští (label)
    jl is_less
    jz is_null
is_less:
    mov eax, -1 
    ret
is_greater:
    mov eax, 1
    ret
is_null:
    mov eax, 0
    ret

; max2c(char a, b) - vrací největší hodnotu
max2c:
    mov al, sil     ; do registru al (8 bit) uložíme proměnnou A
    cmp al, dil     ; porovnáme obě hodnoty
    jg A_is_greater ; skočíme na label A_is_greater, protože A > B
    jl B_is_greater ; skok na label B_is_greater, protože B > A
    ret             ; jinak vracíme původní libovolnou hodnotu, jelikož A == B
A_is_greater:
    ret             ; vracíme hodnotu 1. proměnné uložené v eax, protože A > B
B_is_greater:
    mov al, dil     ; přepíšeme registr eax, protože B > A
    ret

; max3us(unsigned a,b,c) - vrací největší hodnotu di=a, si=b, dx=c
max3us:
    mov ax, di      ; do registru ax (16bit) uložíme proměnnou A
    cmp ax, si      ; porovnáme A s B
    ja a_greater    ; pokud A > B = skok na a_greater
    jb b_greater    ; jinak B > A = skok na b_greater
a_greater:
    cmp ax, dx      ; porovnáme A s C
    jb c_is_max     ; pokud C > A, skok na label c_is_max
    ret             ; jinak A > C, konec programu
b_greater:
    mov ax, si      ; nastvíme nový max na B
    cmp ax, dx     ; porovnáme B s C
    jb c_is_max     ; skok pokud je B < C
    ret             ; jinak vracíme B jako max
c_is_max:
    mov ax, dx     ; nastavíme návratovou hodnotu na C, protože je max
    ret