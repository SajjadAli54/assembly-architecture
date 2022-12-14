.model small
.stack 100h
.data
    val db " Sajjad$" 
    val2 db 1
.code
main proc
    mov ax, @data
    mov ds, ax
    sub cx, cx
    mov cx, 90
    
    outer:                       
        mov ah, 02
        mov dl, val2
        mov dh, 12
        mov bx, 0
        int 10h
    
    
        mov ah, 09
        lea dx, val
        int 21h 
        
        inc val2
        
    loop outer 
 
    mov ah, 4Ch
    int 21h
main endp
end main