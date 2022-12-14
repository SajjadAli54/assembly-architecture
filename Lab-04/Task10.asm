.model small
.stack 100h
.data
    char db ?
.code
main proc
    
    mov ax, @data
    mov ds, ax
    
    mov ah, 02
    
    sub cx, cx
    
    mov cl, 5
    
    outer:
        mov bl, cl
        mov cl, 10
        mov char, '0'
        numbers:
        
            mov dl, char
            int 21h
        
            inc char
        
        loop numbers
        
        mov dl, 10
        int 21h
        mov dl, 13
        int 21h
        
        mov cl, bl
    loop outer
    
    mov ah, 4Ch
    int 21h
main endp
end main