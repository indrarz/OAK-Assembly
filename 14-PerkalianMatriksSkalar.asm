extern scanf
extern printf
extern fflush
    
section .data
	masuk	db "%d", 0
	keluar	db "%d ", 0
	garis	db "%d", 10, 0
    
	input	dd  7, 11, 10,  6
			dd  5,  8,  9, 12
			dd 11, 13, 12, 15 
        
section .bss
    a resd 4
       
section .text
    global main
        
main
	push a
    push masuk
    call scanf
    add esp, 8
    
	mov ebx, [a]
	
	mov eax, [input]
	mul ebx
	
	push eax
    push keluar
    call printf
    add esp, 8
	
	mov eax, [input+4]
	mul ebx
	
	push eax
    push keluar
    call printf
    add esp, 8
    
    mov eax, [input+8]
	mul ebx
	
	push eax
    push keluar
    call printf
    add esp, 8
    
    mov eax, [input+12]
	mul ebx
	
	push eax
    push garis
    call printf
    add esp, 8
    
    mov eax, [input+16]
	mul ebx
	
	push eax
    push keluar
    call printf
    add esp, 8
    
    mov eax, [input+20]
	mul ebx
	
	push eax
    push keluar
    call printf
    add esp, 8
    
    mov eax, [input+24]
	mul ebx
	
	push eax
    push keluar
    call printf
    add esp, 8
    
    mov eax, [input+28]
	mul ebx
	
	push eax
    push garis
    call printf
    add esp, 8
    
    mov eax, [input+32]
	mul ebx
	
	push eax
    push keluar
    call printf
    add esp, 8
    
    mov eax, [input+36]
	mul ebx
	
	push eax
    push keluar
    call printf
    add esp, 8
    
    mov eax, [input+40]
	mul ebx
	
	push eax
    push keluar
    call printf
    add esp, 8
    
    mov eax, [input+44]
	mul ebx
	
	push eax
    push garis
    call printf
    add esp, 8
 
    push 0
    call fflush
    add esp, 4
    
    mov eax, 1
    mov ebx, 0
    int 0x80
