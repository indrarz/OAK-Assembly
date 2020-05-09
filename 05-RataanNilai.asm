extern printf
extern scanf
extern fflush
  
section .data
    fmt db "%d %d %d %d", 0
    msg db "%d", 10, 0
     
section .bss
    w resd 8
    x resd 8
    y resd 8
    z resd 8
      
section .text
    global main
     
main
    push w
    push x
    push y
    push z
    push fmt
    call scanf
    add esp, 20
     
    mov edx, 0
    mov eax, [w]
    add eax, [x]
    add eax, [y]
    add eax, [z]
    mov ecx, 4
    div ecx
     
    push eax
    push msg
    call printf
    add esp, 8
     
    push 0
    call fflush
    add esp, 4