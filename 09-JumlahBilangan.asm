extern printf
extern scanf
extern fflush
   
section .data   
    input db "%d", 0
    hasil db "%d", 10, 0
    
section .bss
    a resd 4
    
section .text
    global main
     
main
   
    push a           
    push input
    call scanf
    add esp, 8
     
    mov ecx, [a]
    mov eax, 1
    mov ebx, 0
     
    label:
    add ebx, ecx
    cmp ecx, ebx
    loop label
    
    push ebx      
    push hasil
    call printf
    add esp, 8
     
    push 0
    call fflush
    add esp, 4
     
    mov eax, 1
    mov ebx, 0
    int 0x80