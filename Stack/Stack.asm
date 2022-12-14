.model small
.stack 100h
.code
main proc
    
    sub cx, cx
    mov bl, 0
    mov cl, 5
    l1:
    mov ah, 01
    int 21h
    cmp al, 13
    je e
    push ax
    inc bl
    loop l1
    
    e:
    cmp bl, 0
    je exit
    
    mov ah, 02
    mov dl, 13    ; Line feed
    int 21h
    
    mov cl, bl
    l2:   
    
    pop ax
    mov dl, al
    mov ah, 02
    int 21h
    loop l2
    
    exit:
    mov ah, 4ch
    int 21h
    
main endp
end main