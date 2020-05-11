extern scanf
extern printf
extern fflush
     
section .data
    n		db "%s", 0
    masuk	db "%s", 10, 0
    keluar	db "%d", 10, 0
         
section .bss
	a resb 20
	b resb 20
        
section .text
    global main
         
main
	cld
	push a
	push n
	call scanf
	
	mov ecx, 21
	mov edi, a
	mov al, ""
	repne scasb
	
	mov eax, 20
	sub eax, ecx
	
	push eax
	push keluar
	call printf
	
exit
	push 0
	call fflush
    mov eax, 1
    mov ebx, 0
    int 0x80