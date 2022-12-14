.model small
.stack 100h
.data
    string db "Hello World!$"        
.code

main proc
    
    
    mov ax, @data
    mov ds, ax
    
    mov ah, 09
    
    lea dx, string
    int 21h
    
    mov ah, 02
    
    mov dl, 10
    int 21h
    
    mov dl, 13
    int 21h
    
    mov ah, 09
    lea dx, string
    int 21h
   
    mov ah, 4Ch
    int 21h

main endp

end main