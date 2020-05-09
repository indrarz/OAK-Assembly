extern printf, scanf, fflush
segment .data
    inp db "%d %d %d %d", 0
    op1 db "A",10,0
    op2 db "B",10,0
    op3 db "C",10,0
    op4 db "D",10,0
    op5 db "E",10,0
segment .bss
    a resd 4
    b resd 4
    c resd 4
    d resd 4
      
section .text
 global main 
 main :
    push a
    push b
    push c
    push d
    push inp
    call scanf
    add esp, 20
      
    mov eax, [a]
    add eax, [b]
    add eax, [c]
    add eax, [d]
      
    mov edx, 0
    mov ecx, 4
    div ecx
     
    cmp eax, 39
    jle E
    cmp eax, 49
    jle D
    cmp eax, 59
    jle C
    cmp eax, 79
    jle B
    push op1
    call printf
    add esp, 4
    jmp exit
 
 
E:
    push op5
    call printf
    add esp, 4
    jmp exit
D:
    push op4
    call printf
    add esp, 4
    jmp exit
C:
    push op3
    call printf
    add esp, 4
    jmp exit
B:
    push op2
    call printf
    add esp, 4
    jmp exit
     
exit:
    push 0
    call fflush
    add esp, 4