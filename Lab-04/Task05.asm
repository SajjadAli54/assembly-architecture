.model small
.stack 100h
.code
main proc     
    
    mov ah, 02
    
    sub cx, cx
    mov cl, 5
    mov bl, '1'
    odd:
        
        
        mov dl, bl
        int 21h
        
        add bl, 2       
        
        
    loop odd
    
    mov ah, 4Ch
    int 21h
main endp
end main