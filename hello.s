section .text
    global _start

_start:
    ; Write "Hello, world!" to STDOUT
    mov eax, 1          ; System call number for write
    mov edi, 1          ; STDOUT file descriptor
    mov esi, msg        ; Message address
    mov edx, msglen     ; Message length
    syscall

    ; Exit with status 0 (EXIT_SUCCESS)
    mov eax, 60         ; System call number for exit
    xor edi, edi        ; Exit status 0
    syscall

section .rodata
    msg: db "Hello, world!", 10
    msglen equ $ - msg
