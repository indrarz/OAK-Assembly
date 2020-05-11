extern scanf
extern printf
extern fflush
     
section .data
    masuk	db "%d", 0
    keluar	db "%d", 10, 0
         
section .bss
    a resd 4
        
section .text
    global main
         
main
    
label
	push a
	push masuk
	call scanf
	mov eax, [a]
	mov ebx, [a]
	mov ecx, 0
	
	cmp ebx, ecx
	je exit
	
	call kuadrat
	
	push eax
	push keluar
	call printf
	
	cmp ebx, ecx
	jne label
	jmp exit
	
kuadrat
	mov edx, eax
	imul edx
	ret

exit
    push 0
    call fflush
         
mov eax, 1
mov ebx, 0
int 0x80