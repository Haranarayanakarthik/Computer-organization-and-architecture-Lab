org 100h 
jmp start 
msg_input db 'Enter the LowerCase Letter: $' 
msg_output db 0Dh,0Ah,'The UpperCase Letter is: $' 
msg_error db 0Dh,0Ah,'The Entered Character is not in LowerCase or Invalid Character $' 
start: 
mov dx, offset msg_input 
mov ah, 09h 
int 21h 
 
mov ah, 01h 
int 21h 
 
cmp al, 'a' 
JL error 
cmp al, 'z' 
JG error 
 
sub al, 20h 
mov bl, al 
 
mov dx, offset msg_output 
mov ah, 09h 
int 21h 
 
mov dl, bl 
mov ah, 02h 
int 21h 
call end 
 
error: 
mov dx, offset msg_error 
mov ah, 09h 
int 21h 
 
end: 
mov ah, 4Ch 
int 21h 
 