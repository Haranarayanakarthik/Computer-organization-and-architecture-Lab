ORG 100h           
MOV DX, OFFSET msg_input  
MOV AH, 09h        
INT 21h            
MOV AH, 01h        
INT 21h            
MOV BL, AL         
CMP AL, '1'        
JL NotDigit        
CMP AL, '9'        
JG NotDigit        
MOV DX, OFFSET msg_output  
MOV AH, 09h        
INT 21h            
; Print the entered digit
MOV DL, BL         
MOV AH, 02h        
INT 21h            
JMP EndProgram     
NotDigit:
MOV DX, OFFSET msg_error  
MOV AH, 09h        
INT 21h            
EndProgram:
MOV AH, 4Ch        
INT 21h            
msg_input  DB 'Enter a single  digit: $'                 
msg_output DB 0Dh, 0Ah, 'The single digit is: $'  
msg_error  DB 0Dh, 0Ah, 'Error: Not a digit! $'    

END       
