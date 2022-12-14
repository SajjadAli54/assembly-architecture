.model small
.stack 100h
.data
    columns db 1
    c db 4
.code
main proc
    mov ax, @data
    mov ds, ax
    mov ah, 02
    sub cx, cx
    mov cl, 4
    outer:
        mov bl, cl
        mov cl, c
        dec c
        inner:
            mov dl, '*'
            int 21h
        loop inner
        mov cl, columns
        inc columns
        innerAgain:
            mov dl, "-"
            int 21h
        loop innerAgain
        mov dl, 0Ah
        int 21h
        mov dl, 0Dh
        int 21h
        mov cl, bl
    loop outer
    mov ah, 4Ch
    int 21h
main endp
end main