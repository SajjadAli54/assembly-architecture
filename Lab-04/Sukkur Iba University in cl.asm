.model small
.stack 100h
.data
    var db "Sukkur IBA University$"
.code
main proc
    mov ax, @data
    mov ds, ax
    
    sub cx, cx
    mov cl, 8
    label1:
        mov ah, 09
        lea dx, var
        int 21h
        mov ah, 02
        mov dl, 10
        int 21h
        mov dl, 13
        int 21h
    loop label1
    
    mov ah, 4Ch
    int 21h
main endp
end main