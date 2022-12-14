.model samll
.stack 100h
.code
sajjad proc
    
    mov ah, 2
    
    mov dl, 'H'
    int 21h
           
    mov dl, 'e'
    int 21h
    
    mov dl, 'l'
    int 21h
    
    int 21h
    
    mov dl, 'o'
    int 21h
    
    mov dl, ' '
    int 21h
    
    mov dl, 'w'
    int 21h
    
    mov dl, 'o'
    int 21h
    
    mov dl, 'r'
    int 21h
    
    mov dl, 'l'
    int 21h
    
    mov dl, 'd'
    int 21h
    
           
    mov ah, 4ch
    int 21h    
    
sajjad endp

end sajjad