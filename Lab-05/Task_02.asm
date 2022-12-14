.model small
.stack 100h
.data
    val db "Sajjad Ali$"
.code
main proc
    mov ax, @data
    mov ds, ax
    mov ah, 02
    
    mov dl, 40
    mov dh, 12
    mov bx, 0
    int 10h
              
    mov ah, 09
    lea dx, val
    int 21h 
 
    mov ah, 4Ch
    int 21h
main endp
end main