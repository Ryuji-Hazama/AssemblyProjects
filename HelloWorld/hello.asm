section .data
	msg db "Hello there!", 0Ah	; msg="Hello there!\n" 0Ah is the newline character
	len equ $ - msg			; len = size of msg

section .text
	global _start			; entry point for the linker

_start:			; start label

	; Call sys_write
	mov rax, 1	; System call 1 = sys_write
	mov rdi, 1	; File descriptor 1 = stdout (screen)
	mov rsi, msg	; Pointer to the string
	mov rdx, len	; Number of bytes to write
	syscall

	; Call sys_exit
	mov rax, 60	; System call 60 = sys_exit
	xor rdi, rdi	; Exit code 0 (xor rdi, rdi sets it to 0)
	syscall		; Trigger the kernel to exit
