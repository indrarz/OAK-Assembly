segment .text           ;code segment
global main         ;must be declared for linker
main:                   ;tell linker entry point
        mov edx,len     ;message length
        mov ecx, msg    ;message to write
        mov ebx,1       ;file descriptor(stdout)
        mov eax,4       ;system call number (sys_write)
        int 0x80        ;call kernel
        mov eax,1       ;system call number (sys_exit)
            mov ebx,0       ;return 0
        int 0x80        ;call kernel
segment .data           ;data segment
msg     db 'Hello x86',0xa  ;our dear string
len     equ $-msg       ;length of our dear string