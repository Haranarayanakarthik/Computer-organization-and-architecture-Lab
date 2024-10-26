ORG 100h
    mov dx, offset msg1
    MOV AH, 09H
    INT 21H

    MOV AH, 01H      
    INT 21H
    SUB AL, 30H      
    MOV BL, AL       

 
    mov dx, offset msg2
    MOV AH, 09H
    INT 21H

  
    MOV AH, 01H     
    INT 21H
    SUB AL, 30H     

  
    CMP BL, AL      
    JNE NOT_EQUAL    

  
    mov dx, offset equalMsg
    MOV AH, 09H      
    INT 21H
    JMP EXIT        

NOT_EQUAL:
    
    mov dx, offset notEqualMsg
    MOV AH, 09H      
    INT 21H

EXIT:                                 
    MOV AH, 4CH     
    INT 21H

msg1 DB "Enter first digit: $"
msg2 DB 0Dh, 0Ah, "Enter second digit: $"
equalMsg db  0Dh,0Ah,'The numbers are equal.$'
notEqualMsg DB 0Dh, 0Ah, "The given digits are not equal!$"

END
