ORG 100h                     

    mov dl, '9'              

reverse_number_loop:
    mov ah, 02h              
    int 21h                  
    dec dl                   
    cmp dl, '0' - 1          
    jge reverse_number_loop  

    mov ah, 4Ch              
    int 21h                  
end

