extern scanf
extern printf
extern fflush
       
section .data
    masuk db "%f", 0
    masuk1 db "%d", 0
    keluar db "%.1f", 10, 0
    sum dq 0.0       
           
section .bss
	n resd 4
	a resd 4
	result resd 4
      
section .text
    global main
           
main
	push n
    push masuk1
    call scanf
    
    mov edi, [n]
	fld qword[sum]
	
.loop
	push a
	push masuk
	call scanf
	add esp, 8
	
	fadd dword[a]
	
	sub edi, 1
	cmp edi, 0
	jne .loop


	fidiv dword[n]
	fst qword[result]
	
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