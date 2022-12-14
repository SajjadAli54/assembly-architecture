.model small
.stack 100h
.data
	str  db "Hello World!$"
.code
main proc
	     mov ax, @data
	     mov ds, ax
    
	     mov ah, 09
	     lea dx, str
	     int 21h

	     mov ah, 4ch
	     int 21h

main endp

end main