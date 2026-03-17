global inc1
global rectangle_circumference
global obsah_obdelniku
global obvod_ctverce
global obvod_trojuhelnika
global obvod_trojuhelnika2
global obsah_trojuhelnika2
global objem_krychle
global avg
section .text
;;
;; int inc(int)
;;
;; funkce majici jeden argument, vracejici hodnotu o jedna vyssi
;;
inc1:
    mov eax, edi ; presune prvni argument do registru eax
    add eax, 1 ; zvysi hodnotu o jedna
    ret ; navrat z funkce
;;
;; int rectangle_circumference(int, int)
;;
;; vypocet obvodu obdelnika
;; funkce ma dva argumenty (velikost strany obdelnika)
;;
rectangle_circumference:
    mov eax, edi ; ulozi do eax jednu stranu obdelnika
    add eax, esi ; pricte druhou stranu
    add eax, eax ; vynasobi dvema
    ret
;;
;; obsah_obdelniku(int a, int b);
;;
;;
obsah_obdelniku:
    mov eax, edi ;; uloží do eax, stranu A obdelniku
    mov ebx, esi ;; uloží do eax, stranu B obdelniku
    mul ebx      ;; vynásobí eax s ebx
    ret
;;
;; obvod_ctverce(a = 5);
;;
;;
obvod_ctverce:
    mov eax, edi    ; ulozi do eax hodnotu proměnné 'a'
    mov ebx, 4      ; uloží do ebx(32b) hodnotu 4
    imul eax, ebx   ; vynásobí 
    ret

obvod_trojuhelnika:
    mov eax, edi    ; uložíme hodnotu v proměnné a
    add eax, esi    ; přičteme k 'a' hodnotu v registru esi (proměnná b)
    add eax, edx    ; přičteme poslední proměnnou v registru edx
    ret

obvod_trojuhelnika2:
    mov eax, edi
    imul eax, 3
    ret

obsah_trojuhelnika2:
    mov eax, edi    ; uložíme hodnotu a
    mov edx, 0      ; vynulujeme zbytek uložený v edx
    mov ecx, 2      ; uložíme hodnotu pro dělení 2
    mul esi         ; vynásobíme s hodnotou b
    div ecx         ; (eax = návratový registr:edx = pro zbytek po dělení) (eax:edx) / registr
    ret
    
objem_krychle:
    mov eax, edi
    mul edi
    mul edi
    ret

avg:
    mov eax, edi    ; proměnná a do registru eax
    add eax, esi    ; přičti proměnnou b
    add eax, edx    ; přičti proměnnou c
    mov edx, 0      ; vynuluj před dělením
    mov ecx, 3      ; ulož 3
    div ecx         ; vyděl eax/ecx
    ret