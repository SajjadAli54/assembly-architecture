.model small
.stack 100h
.data
    str db   "Input given    : $"
    input db "Enter any char : $"
.code
sajjad proc
    mov ax, @data
    mov ds, ax
    
    mov ah, 09
    lea dx, input
    int 21h
    
    mov ah, 01                                  
    int 21h
    
    mov bl, al
    
    mov ah, 02
    
    mov dl, 10
    int 21h
    
    mov dl, 13
    int 21h
    
    mov ah, 09
    lea dx, str
    int 21h
    
    
    mov ah, 02
    mov dl, bl
    int 21h   
               
    Mov ah, 4ch
    int 21h
sajjad endp

end sajjad   