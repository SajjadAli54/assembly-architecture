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
    p db "Palindrom$"
    np db "Not palindrome$"
.code
main proc
    mov ax, @data
    mov ds, ax
    
    xor bx, bx
    input:
        mov ah, 01
        int 21h
        cmp al, 0Dh
        je outer
        mov str[bx], al
        inc bx
    jmp input
    
    outer:
    lfcr
    dec bx
    xor cx, cx
    palindrom:
        mov dl, str[bx]
        push bx
        mov bx, cx
        mov dh, str[bx]
        pop bx
        inc cx
        dec bx
        
        cmp dl, dh
        jne notPalindrom
        
        cmp cx, bx
        jg isPal    
    
    jmp palindrom
    
    isPal:
        print p
        jmp exit
    notPalindrom:
        print np
    exit:           
    mov ah, 4ch
    int 21h
    
main endp
end main