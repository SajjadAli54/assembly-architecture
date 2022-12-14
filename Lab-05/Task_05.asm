.model small
.stack 100h
.data
    val db '*'
    col db 1
.code
main proc
    mov ax, @data
    mov ds, ax
    mov ah, 02
    sub cx, cx
    mov cl, 5
    outer:
        mov bl, cl        
        mov cl, col
        add col, 2
        inner:
            mov dl, val
            int 21h
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