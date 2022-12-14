.model small
.stack 100h
.data
.code
main proc
    mov ah, 01
    
    sub cx, cx
    mov cl, 5
    inputs:
        int 21h
        push ax
    loop inputs

    pop ax
    pop ax
    pop ax
    
    pop ax
    sub ax, 32
    mov dx, ax
    mov ah,  02
    int 21h
    
    pop ax
    sub ax, 32
    mov dx, ax
    mov ah,  02
    int 21h
    
    mov ah, 4Ch
    int 21h
        
    
main endp
end main