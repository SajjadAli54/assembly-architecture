.model small
.stack 100h
.code
main proc
    mov ah, 01
    int 21h
    
    mov bl, al
    int 21h
    add bl, al
    
    sub bl, '0'
    
    mov ah, 02
    int 21h
    mov dl, bl
    int 21h
    
    mov ah, 4Ch
    int 21h
    
main endp