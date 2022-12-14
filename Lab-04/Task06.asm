.model small
.stack 100h
.code
main proc 
    
    mov ah, 02
    
    sub cx, cx
    
    mov cl, 4
    mov bl, 'A'
    alphabet:
        
        mov dl, bl
        int 21h
        inc bl    
    loop alphabet
    
    mov cl, 3
    dec bl
    alphabet1:
        dec bl
        mov dl, bl
        int 21h    
    loop alphabet1
    
    
    
    mov ah, 4Ch
    int 21h
main endp
end main