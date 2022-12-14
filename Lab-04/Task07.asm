.model small
.stack 100h
.code
main proc  
    
    mov ah, 02
    
    sub cx, cx
    
    mov cl, 3
    mov bl, '3'
    label1:
        mov dl, bl
        int 21h
        dec bl    
    loop label1
    
    mov dl, '*'
    int 21h
    
    mov cl, 3
    mov bl, '1'
    label2:
        mov dl, bl
        int 21h
        inc bl    
    loop label2
    
    
    
    mov ah, 4Ch
    int 21h
main endp
end main