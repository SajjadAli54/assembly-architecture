.model small
.stack 100h
.code
main proc
    
    sub cx, cx
    mov cl, 10
    mov bl, '0'
    sajjad:
        mov ah, 09
        
        mov ah, 02
        mov dl, bl
        int 21h
        
        inc bl
        
        mov dl, 10
        int 21h
        mov dl, 13
        
        int 21h
    loop sajjad
    
    mov ah, 4Ch
    int 21h
main endp
end main