global main
 
section .data   
    msg: db 'Hello '
    len: equ $-msg
 
section .bss;
   inp resb 4
 
section .text
    main:
    mov eax, 3;
    mov ebx, 0;
    mov ecx, inp;
    mov edx, len;
    int 0x80;
 
    mov eax, 4
    mov ebx, 1
    mov ecx, msg
    mov edx, len
    int 0x80
 
    mov eax, 4
    mov ebx, 1
    mov ecx, inp
    mov edx, 4
    int 0x80
     
    mov eax, 1
    mov ebx, 0
    int 0x80