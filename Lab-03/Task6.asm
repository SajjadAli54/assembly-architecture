;Read 9 chars and display it on screen

.model small
.stack 100h
.data
    input db "Enter 9 characters  $"
    output db "You have entered  $"
    a db ?
    b db ?
    c db ?
    d db ?
    e db ?
    f db ?
    g db ?
    h db ?
    i db ?      
.code
main proc
    mov ax, @data
    mov ds, ax
    
    mov ah, 09
    lea dx, input
    int 21h
    
    mov ah, 01
    
    int 21h
    mov a, al
    
    int 21h
    mov b, al
    
    int 21h
    mov c, al
    
    int 21h
    mov d, al
    
    int 21h
    mov e, al
    
    int 21h
    mov f, al
    
    int 21h
    mov g, al
    
    int 21h
    mov h, al
    
    int 21h
    mov i, al
    
    mov ah, 02
    
    mov dl, 10
    int 21h
    
    mov dl, 13
    int 21h
    
    mov ah, 09
    lea dx, output
    int 21h
    
    mov ah, 02
    
    mov dl, a
    int 21h
    
    mov dl, b
    int 21h
    
    mov dl, c
    int 21h
    
    mov dl, d
    int 21h
    
    mov dl, e
    int 21h
    
    mov dl, f
    int 21h
    
    mov dl, g
    int 21h
    
    mov dl, h
    int 21h
    
    mov dl, i
    int 21h
        
    mov ah, 4Ch
    int 21h
main endp
end main