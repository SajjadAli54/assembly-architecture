.model small
.stack 100h
;data directive is optional
.code
sajjad proc       ; main is optional. we can change it
    Mov ah, 02  ; Mov moves data from right to left. 02 is service number for output
    Mov dl, 'I'
    int 21h     ;Interrupt for I/O. DOS Interrupt
    
    Mov dl, 'B'
    int 21h     
    
    Mov dl, 'A'
    int 21h
    
    Mov dl, ' '
    int 21h
    
    Mov dl, 'S'
    int 21h
    
    Mov dl, 'u'
    int 21h
    
    Mov dl, 'k'
    int 21h
    
    int 21h
    
    Mov dl, 'u'
    int 21h
    
    Mov dl, 'r'
    int 21h  
    
    Mov ah, 4ch ; Return to DOS  4ch is service number in hexa
    
    int 21h
sajjad endp

end sajjad 


;Output : IBAA
    