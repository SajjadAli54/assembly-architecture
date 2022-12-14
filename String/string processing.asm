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
    str db 5 dup(?)

.code
main proc
    
    mov ax, @data
    mov ds, ax
    
    mov bx, 0
    xor cx, cx
    mov cx, 10
    a:
        mov ah, 01
        int 21h
        mov str[bx], al
        
        mov ah, 02
        mov dl, str[bx]
        int 21h 
        
        lfcr
    loop a   
    mov ah, 4Ch
    int 21h
    
main endp
end main