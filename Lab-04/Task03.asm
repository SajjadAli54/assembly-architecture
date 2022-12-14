.model small
.stack 100h
.code
main proc
    
    mov ah, 02
    
    sub cx, cx
    mov cl, 10
    mov bl, '0'
    numbers:
        
        mov dl, bl
        int 21h
        
        inc bl
        
    loop numbers
    
    mov ah, 4Ch
    int 21h
main endp
end main