global inc1
global rectangle_circumference
global obsah_obdelniku
global obvod_ctverce
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
    mov eax, edi ; ulozi do eax hodnotu proměnné 'a'
    mov ebx, 4   ; uloží do ebx(32b) hodnotu 4
    imul eax, ebx   ; vynásobí 
    ret