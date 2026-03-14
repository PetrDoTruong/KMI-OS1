global swap
global division

section .text
swap:
	mov eax, [rdi]		; do eax zapíšu hodnotu na adrese rdi
	mov edx, [rsi]		; do edx zapíšu hodnotu na adrese rsi
	mov [rdi], edx		; na adresu rdi zapíšu hodnotu edx
	mov [rsi], eax		; na adesu rsi zapíšu hodnotu eax
	ret

division:
division:
    mov r8, rdx        ; uložíme pointer na result

    mov eax, edi       ; eax = x
    mov edx, 0         ; rdx = 0
    div esi            ; eax = x/y, edx = x%y

    mov [r8], eax      ; *result = eax
    mov [rcx], edx     ; *remainder = edx

    ret
	
