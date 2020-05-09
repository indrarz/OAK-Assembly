extern printf, scanf, fflush
segment .data
    inp db "%d %d %d", 0
    op1 db '3',10,0
    op2 db '1',10,0
segment .bss
    a resd 4
    b resd 4
    c resd 4
      
section .text
 global main 
 main :
    push c
    push b
    push a
    push inp
    call scanf
    add esp, 16
     
    mov edx, 0 
    mov eax, [a]
    add ebx, [b]
    add ecx, [c]
 
    cmp eax, ebx
    jge ab1
     
    push inp
    call printf
    add esp, 4
    jmp exit
     
    ab1:
    cmp eax,ecx
    jg ab2
    push op2
    call printf
    add esp, 4
    jmp exit
     
     
    ab2:
    push op1
    call printf
    add esp, 4
    jmp exit
     
exit: 
    push 0
    call fflush
    add esp, 4
    mov eax, 1
    mov ebx, 0
    int 0x80