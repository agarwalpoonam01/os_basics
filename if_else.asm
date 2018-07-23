mov bx , 50
cmp bx , 4
jle t1
cmp bx , 40
jle t2
mov al, 'C'
jmp the_end


t1:
    mov al, 'A'
    jmp the_end
t2:
    mov al, 'B'
the_end:

mov ah , 0x0e ; int =10/ ah =0 x0e -> BIOS tele - type output
int 0x10 ; print the character in al
jmp $
; Padding and magic number.
times 510 -( $ - $$ ) db 0
dw 0xaa55


