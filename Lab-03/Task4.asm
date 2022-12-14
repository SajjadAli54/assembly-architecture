.model small
.stack 100h
.code
main proc
    
    mov ah, 01
    int 21h
    
    add al,32
    
    mov bl, al
    
    mov ah, 02
    
    mov dl, 10
    int 21h
    mov dl, 13
    int 21h
    
    mov dl, bl
    int 21h
    
    mov ah, 4Ch
    int 21h
    
main endp
end main