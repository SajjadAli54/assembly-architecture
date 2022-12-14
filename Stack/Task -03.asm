.model small
.stack 100h
.data
    msg db "Please enter the number to search $"
    sh db "Number exist $"
.code
main proc
    mov ax, @data
    mov ds, ax
    
    mov ah, 01
    
    sub cx, cx
    mov cl, 5
    inputs:
        int 21h
        push ax
    loop inputs
    
    mov ah, 02
    mov dl, 10
    int 21h
    mov dl, 13
    int 21h
    
    mov ah, 09
    lea dx, msg
    int 21h
    
    mov ah, 01
    int 21h 
       
    mov bx, ax
    
    mov ah, 02
    mov dl, 10
    int 21h
    mov dl, 13
    int 21h
 
    mov cl, 5
    check:
        pop ax
        cmp ax, bx
        je put
        
        jmp do
        
        put:
            mov ah, 09
            lea dx, sh
            int 21h
            jmp exit
            
        do:
            ; 
    loop check
    
    mov ah, 02
    mov dl, 10
    int 21h
    mov dl, 13
    int 21h
    
    mov dx, bx
    int 21h
     
    exit:
        mov ah, 4Ch
        int 21h
        
    
main endp
end main