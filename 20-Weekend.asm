extern scanf
extern printf
extern fflush
     
section .data
    masuk	db "%s", 0
    wd 		db "weekday", 10, 0
    we 		db "weekend", 10, 0
    sun 	db "Sun", 0
    sat 	db "Sat", 0
    
         
section .bss
	a resb 10
	b resb 10
        
section .text
    global main
         
main
	push a
	push masuk
	call scanf
	
	mov esi, a
	mov edi, sun
	
	cmpsb
	je .same
	
	mov edi, sat
	
	cmpsb
	je .same

	push wd
	call printf
	jmp exit

.same
	push we
	call printf
	jmp exit
         
exit
	push 0
	call fflush
    mov eax, 1
    mov ebx, 0
    int 0x80