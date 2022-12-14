.model small
lfcr macro
    mov ah, 02
    mov dl, 10
    int 21h
    mov dl, 13
    int 21h
endm
print macro m 
    mov ah, 09
    lea dx, m
    int 21h
endm
.stack 100h
.data
    str db 5 dup('$')
.code
main proc
    mov ax, @data
    mov ds, ax
    
    xor cx, cx
    xor bx, bx
    mov cx, 5
    input:
        mov ah, 01
        int 21h
        mov str[bx], al
        inc bx
    loop input    
    lfcr
    xor bx, bx
    mov cx, 5
    mov dl, 0
    greater:
        cmp str[bx], dl
        jg p 
        jmp q
        p:
            mov dl, str[bx]
        q:
            inc bx
    
    loop greater
    mov ah, 02
    int 21h
    exit:
        mov ah, 4ch
        int 21h
    
main endp
end main