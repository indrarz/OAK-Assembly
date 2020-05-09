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
     
    mov ebp, 0
    mov edx, 1
    mov ebx, edx
    mov ecx, [a]
    mov eax, 0
    mov ebx, 1
     
    label:
    mov eax, edx
    mov ebp, eax
    mov edx, ebx
    add ebx, ebp
    loop label
    
    push eax     
    push hasil
    call printf
    add esp, 8
     
    push 0
    call fflush
    add esp, 4
     
    mov eax, 1
    mov ebx, 0
    int 0x80