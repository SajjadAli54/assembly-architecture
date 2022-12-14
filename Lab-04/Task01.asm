.model small
.stack 100h
.code
main proc
             
    mov ah, 02
    
    sub cx, cx
    mov cl, 26
    mov bl, 'A'
    alphabet:
        mov dl, bl
        int 21h
        
        inc bl
        
    loop alphabet
    
    mov ah, 4Ch
    int 21h
main endp
end main