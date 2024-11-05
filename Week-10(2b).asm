ORG 100h                     

    mov dl, 'Z'             

reverse_print_loop:
    mov ah, 02h             
    int 21h                  
    dec dl                   
    cmp dl, 'A' - 1          
    jge reverse_print_loop   

    mov ah, 4Ch              
    int 21h                  
end
