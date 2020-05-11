extern scanf
extern printf
extern fflush
    
section .data
	masuk	db "%d %d", 0
	keluar	db "%d", 10, 0
    
	input	dd 7, 11, 10, 6
			dd 5,  8,  9, 2
			dd 1,  3, 12, 4 
        
section .bss
    a resd 4
    b resd 4
       
section .text
    global main
        
main
	push b
	push a
    push masuk
    call scanf
    add esp, 12
    
    mov eax, 4
	mov ebx, [a]
	mul ebx
	
	add eax, [b]
	mov ebx, eax
	mov eax, [input+4*ebx]
	
    push eax
    push keluar
    call printf
    add esp, 8
 
    push 0
    call fflush
    add esp, 4
    
    mov eax, 1
    mov ebx, 0
    int 0x80

