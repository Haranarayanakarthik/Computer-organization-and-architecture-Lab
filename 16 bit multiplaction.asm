org 100h 
mov ax,0900h 
mov bx,0123h 
mul bx 
mov bx,ax
mov cx,dx 
 mov ah,ch
 and ah,0f0h
 shr ah,4
 add ah,30h
 cmp ah,39h
 jle first_digit
 add ah,7
 first_digit:
 mov dl,ah
 mov ah,02h
 int 21h
 mov ah,ch
 and ah,0fh
 add ah,30h
 cmp ah,39h
 jle second_digit
 add ah,7 
 second_digit:
 mov dl,ah
 mov ah,02h
 int 21h
 mov ah,cl
 and ah,0f0h
 shr ah,4
 add ah,30h
 cmp ah,39h
 jle third_digit
 add ah,7
 third_digit:
 mov dl,ah
 mov ah,02h
 int 21h
 
 mov ah,cl
 and ah,0fh
 add ah,30h
 cmp ah,39h
 jle fourth_digi
 add ah,7
 fourth_digi:
 mov dl,ah
 mov ah,02h
 int 21h
 
 mov ah, bh 
 shr ah, 4 
 add ah, 30h
 cmp ah, 39h 
 jle fifth_digit
 add ah, 7 
fifth_digit:
 mov dl, ah
 mov ah, 02h 
 int 21h
 mov ah, bh
 and ah, 0fh
 add ah, 30h 
 cmp ah, 39h 
 jle sixth_digit
 add ah, 7 
sixth_digit:
 mov dl, ah 
 mov ah, 02h 
 int 21h
 mov ah, bl 
 shr ah, 4 
 add ah, 30h 
 cmp ah, 39h 
 jle seventh_digit
 add ah, 7 
seventh_digit:
 mov dl, ah 
 mov ah, 02h 
 int 21h
 mov ah, bl 
 and ah, 0fh 
 add ah, 30h 
 cmp ah, 39h 
 jle eight_digit
 add ah, 7 
eight_digit:
 mov dl, ah 
 mov ah, 02h 
 int 21h
 mov ah,4ch
int 21h