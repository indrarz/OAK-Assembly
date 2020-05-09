extern printf
extern scanf
extern fflush
  
section .data
    fmt db "%d %d", 0
    msg db "%d", 10, 0
     
section .bss
    x resd 4
    y resd 4
      
section .text
    global main
     
main
    push x
    push y
    push fmt
    call scanf
    add esp, 12
     
    mov eax, [x]
    add eax, [y]
     
    push eax
    push msg
    call printf
    add esp, 8
     
    push 0
    call fflush
    add esp, 4