extern scanf
extern printf
extern fflush
      
section .data
    masuk db "%f", 0
    keluar db "%f", 10, 0
          
section .bss
    a resd 4
    b resd 4
     
section .text
    global main
          
main
    push a
    push masuk
    call scanf
     
    fld dword[a]
    push dword[a]
    fldpi
    fmulp
    fstp qword[b]
     
    push dword[b+4]
    push dword[b]
    push keluar
    call printf
     
exit
    push 0
    call fflush
    mov eax, 1
    mov ebx, 0
    int 0x80