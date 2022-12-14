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
        mov char, 'A'
        mov cl, 26
        alphabet:
            mov dl, char
            int 21h
        
            inc char
        
        loop alphabet
        
        mov cl, bl
        mov dl, 10
        int 21h
        mov dl, 13
        int 21h
    loop outer
    mov ah, 4Ch
    int 21h
main endp
end main