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
    add bx, 48
    lfcr 
    mov ah, 02
    mov dx, bx
    int 21h
           
    mov ah, 4ch
    int 21h
    
main endp
end main