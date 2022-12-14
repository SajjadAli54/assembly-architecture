.model small
.stack 100h
.code
main proc
    
    mov ah, 02
    
    sub cx, cx
    mov cl, 5
    mov bl, '0'
    even:
        
        
        mov dl, bl
        int 21h
        
        add bl, 2       
        
        
    loop even
    
    mov ah, 4Ch
    int 21h
main endp
end main