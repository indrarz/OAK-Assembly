extern scanf
extern printf
extern fflush
     
section .data
    masuk	db "%s %s", 0
    keluar	db "%d", 10, 0
    no		db "tidak ada", 10, 0
    
         
section .bss
	a resb 51
	b resb 2
        
section .text
    global main
         
main
	cld
	push b
	push a
	push masuk
	call scanf
	
	mov ecx, 50
	mov edi, a
	mov al, [b]
	repne scasb
	
	mov eax, 50
	sub eax, ecx
	mov ebx, 0
	cmp ecx, ebx
	je label
	
	push eax
	push keluar
	call printf
	jmp exit

label
	push no
	call printf
	jmp exit
	
exit
	push 0
	call fflush
    mov eax, 1
    mov ebx, 0
    int 0x80