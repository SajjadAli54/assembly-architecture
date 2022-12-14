.model small
.stack 100h
.code
main proc
    mov ah, 02
    mov dl, 'a'
    
    sub cx, cx
    mov cx, 10
    label1:
        int 21h
    loop label1
    
    mov ah, 4Ch
    int 21h
main endp
end main