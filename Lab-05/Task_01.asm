.model small
.stack 100h
.data
    val db '3'
.code
main proc
    mov ax, @data
    mov ds, ax
    mov ah, 02

    sub cx, cx
    mov cl, 4
    outer:
        mov bl, cl
        mov cl, 3
        inner1:
            mov dl, val
            int 21h
            dec val
        loop inner1
        mov dl, '*'
        int 21h
        mov val, '1'
        mov cl, 3
        inner2:
            mov dl, val
            int 21h
            inc val
        loop inner2
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