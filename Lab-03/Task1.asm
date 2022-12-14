.model small
.stack 100h
.data
    input db "Enter a char  $"
    output db "You have entered  $"
.code
main proc
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
    lea dx, output
    int 21h
    
    mov ah, 02
    
    mov dl,bl
    int 21h
    
    mov ah, 4Ch
    int 21h
    
main endp
end main
    
    