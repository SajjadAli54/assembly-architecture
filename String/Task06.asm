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
        
    mov bx, 4
    mov cx, 5
    print:
        mov ah, 02
        mov dl, str[bx]
        int 21h
        dec bx 
    loop print
       
    mov ah, 4ch
    int 21h
    
main endp
end main