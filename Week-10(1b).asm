ORG 100h                     

    mov dl, 'A'              

print_alpha_loop:
    mov ah, 02h              
    int 21h                  
    inc dl                   
    cmp dl, 'Z' + 1          
    jl print_alpha_loop      

    mov ah, 4Ch              
    int 21h                  
end
