extern scanf
extern printf
extern fflush
    
section .data
	masuk	db "%d", 0
	keluar	db "%d", 10, 0
    
	input	dd 7, 11, 10, 6
			dd 5,  8,  9, 2
			dd 1,  3, 12, 4 
        
section .bss
    a resd 4
       
section .text
    global main
        
main
	push a
    push masuk
    call scanf
    add esp, 8
    
    mov ecx, 4
    mov eax, 4
	mov ebx, [a]
	mul ebx
	mov ebx, 0

label
	add ebx, dword[input+4*eax]
	add eax, 1
	loop label
	
    push ebx
    push keluar
    call printf
    add esp, 8
 
    push 0
    call fflush
    add esp, 4
    
    mov eax, 1
    mov ebx, 0
    int 0x80
