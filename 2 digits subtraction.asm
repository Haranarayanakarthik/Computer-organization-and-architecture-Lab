ORG 100h           

MOV DX, OFFSET msg_input1  
MOV AH, 09h        
INT 21h            

MOV AH, 01h        
INT 21h            
SUB AL, '0'        
MOV BL, AL         

MOV DX, OFFSET msg_input2  
MOV AH, 09h        
INT 21h            

MOV AH, 01h        
INT 21h            
SUB AL, '0'        
MOV BH, AL         

SUB BL, BH         

CMP BL, 0
JGE PrintResult    

MOV DL, '-'        
MOV AH, 02h        
INT 21h            
NEG BL             

PrintResult:
MOV DX, OFFSET msg_output  
MOV AH, 09h        
INT 21h            

ADD BL, '0'        
MOV DL, BL         
MOV AH, 02h        
INT 21h            

EndProgram:
MOV AH, 4Ch        
INT 21h            

msg_input1  DB 'Enter the first digit: $'        
msg_input2  DB 0Dh, 0Ah, 'Enter the second digit: $'  
msg_output DB 0Dh, 0Ah, 'The result of Subtraction is: $'      
END
