.model small
.stack 100h
.data
    columns db 5
.code
main proc
    mov ax, @data
    mov ds, ax
    
    mov ah, 02
    sub cx, cx
    mov cl, 5
    outer:
        mov bl, cl
        mov cl, columns
        dec columns
        inner:
            mov dl, '*'
            int 21h
        loop inner
        mov dl, 0Ah
        int 21h
        mov dl, 0Dh
        int 21h 
        mov cl, bl
    loop outer
main endp
end main