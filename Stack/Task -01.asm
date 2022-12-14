.model small
.stack 100h
.data
    msg db "Vowels not found$"
.code
main proc
    
    mov ax, @data
    mov ds, ax
    
    sub cx, cx
    sub bl, bl
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
        mov dl, 10
        int 21h
    
        mov cl, bl
        sub bl, bl
        
        l2:   
    
        pop ax
        mov dl, al
        cmp dl, 'a'
        je print
        cmp dl, 'e'
        je print
        cmp dl, 'i'
        je print
        cmp dl, 'o'
        je print
        cmp dl, 'u'
        je print 
        cmp dl, 'A'
        je print
        cmp dl, 'E'
        je print
        cmp dl, 'I'
        je print
        cmp dl, 'O'
        je print
        cmp dl, 'U'
        je print
        
        
        JMP no
        print:
            mov ah, 02
            int 21h
            inc bl
            
        no:
            ;
   loop l2
        
        cmp bl, 0
        je vow
        
        jmp exit
        
        vow:
            mov ah, 09
            lea dx, msg
            int 21h
            
    
    exit:
        mov ah, 4ch
        int 21h
    
main endp
end main