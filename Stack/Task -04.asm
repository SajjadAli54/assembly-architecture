.model small
.stack 100h
.code
main proc
    mov ah, 01
    
    sub cx, cx
    mov cl, 5
    inputs:
        int 21h
        push ax
    loop inputs
    
    pop bx
    mov cl, 4
    check:
        pop ax
        cmp ax, bx
        jl put
        
        jmp do
        
        put:
            mov bx, ax
            
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
    
    mov ah, 4Ch
    int 21h
        
    
main endp
end main