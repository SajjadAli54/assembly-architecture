.model small
.stack 100h
.data
    val db '0' 
    rows db 0
    msg db "Enter a number to hit  $"
    arrow db " -->$"
    count db ?
.code
main proc
    mov ax, @data
    mov ds, ax

    sub cx, cx
    mov cl, 10
    
    outer:                       
        mov ah, 02
        mov dl, 79
        mov dh, rows
        mov bx, 0
        int 10h

        mov ah, 02
        mov dl, val
        int 21h 
        
        inc rows
        inc val
    loop outer

    mov cl, 10
    other:
        mov ah, 09
        lea dx, msg
        int 21h
        
        mov ah, 01
        int 21h
        mov rows, al
        sub rows, 48
        
        mov val, 1
        
        mov count, cl
        mov cl, 80
        inner:
            mov ah, 02
            mov dl, val
            mov dh, rows
            mov bx, 0
            int 10h

            mov ah, 09
            lea dx, arrow
            int 21h
            inc val
        loop inner
        mov cl, count


    loop other


 
    mov ah, 4Ch
    int 21h
main endp
end main