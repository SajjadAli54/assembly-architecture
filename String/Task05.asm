.model small
lfcr macro
    mov ah, 02
    mov dl, 10
    int 21h
    mov dl, 13
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
        
    xor bx, bx
    mov cx, 5
    mov dl, '0'
    count:
        cmp str[bx], 'a'
        je c
        cmp str[bx], 'e'
        je c
        cmp str[bx], 'i'
        je c
        cmp str[bx], 'o'
        je c
        cmp str[bx], 'u'
        je c
        jmp d
        c:
            inc dl
        d:
          inc bx
    loop count 
    
    mov ah, 02
    int 21h
    
       
    mov ah, 4ch
    int 21h
    
main endp
end main