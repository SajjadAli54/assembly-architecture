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
    msg db "please input any char to delete : $"
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
    print msg
    mov ah, 01
    int 21h
    mov bx, ax
    lfcr
    mov dx, bx
    xor bx, bx
    mov cx, 5
    search:
        cmp str[bx], dl
        je p
        jmp q
        p:
           jmp delete  
        q:
            inc bx    
    loop search
    
    delete:
        inc bx
        mov dl, str[bx]
        dec bx
        mov str[bx], dl
        inc bx
    loop delete
    mov str[bx], 00
    lfcr
    
    mov cx, 5
    xor bx, bx
    pr:
        mov ah, 02
        mov dl, str[bx]
        int 21h
        inc bx
    loop pr
    
    exit:
        mov ah, 4ch
        int 21h
    
main endp
end main