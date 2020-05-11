extern scanf
extern printf
extern fflush

section .data
    masuk		db "%d %d", 0
    keluar		db "%d", 10, 0
    dword_size	equ 4
         
section .bss
    a resd 4
    b resd 4
    res resd 4
        
section .text
    global main
         
main
	push a
	push b
	push masuk
	call scanf

	push dword[a]
	push dword[b]
	call tambah
	mov [res], eax
	
	push eax
	push keluar
	call printf
	
	jmp exit
	
tambah
	push ebp
	mov ebp, esp
	mov eax, [ebp+3*dword_size]
	add eax, [ebp+2*dword_size]
	pop ebp
	ret 2*dword_size

exit   
    push 0
    call fflush

mov eax, 1
mov ebx, 0
int 0x80