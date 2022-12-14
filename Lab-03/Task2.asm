.model small
.stack 100h
.data
    input db "Enter a character  $"
    output db "The next character is  $"
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
    inc bl
    
    mov ah, 02
    
    mov dl, 10
    int 21h
    
    mov dl, 13
    int 21h
    
    mov ah, 09
    lea dx, output
    int 21h
    
    mov ah, 02
    
    mov dl, bl
    int 21h
       
    mov ah, 4Ch
    int 21h
    
main endp
end main