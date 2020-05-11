extern scanf
extern printf
extern fflush
      
section .data
    masuk db "%f %f", 0
    keluar db "%f", 10, 0
          
section .bss
    a resd 4
    b resd 4
    result resd 4
    result1 resd 4
    result2 resd 4
     
section .text
    global main
          
main
    push b
    push a
    push masuk
    call scanf
     
    fld dword[a]
    fld dword[a]
    fmulp
    fstp dword[result1]
     
    fld dword[b]
    fld dword[b]
    fmulp
    fstp dword[result2]
     
    fld dword[result1]
    fld dword[result2]
    faddp
     
    fsqrt
    fstp qword[result]
     
    push dword[result+4]
    push dword[result]
    push keluar
    call printf
     
exit
    push 0
    call fflush
    mov eax, 1
    mov ebx, 0
    int 0x80