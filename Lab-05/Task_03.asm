.model small
.stack 100h
.data
    val db ?
    col db 5
.code
main proc
    mov ax, @data
    mov ds, ax
    mov ah, 02
    sub cx, cx
    mov cl, 5
    outer:
        mov bl, cl
        mov val, '1'
        mov cl, col
        dec col
        inner:
            mov dl, val
            int 21h
            inc val
        loop inner
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