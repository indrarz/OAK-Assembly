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
	mov ecx, [a]
	mov ebx, [a]
	
	cmp ebx, 0
	je exit
	
	mov eax, 1
	call pangkat
	
	push eax
	push keluar
	call printf
	
	cmp ebx, 0
	jne label
	
	jmp exit
	
pangkat
	mov edx, 2
	imul edx
	loop pangkat
	ret

exit
    push 0
    call fflush

exit1         
	mov eax, 1
	mov ebx, 0
	int 0x80