; Print hexadecimal value of a quadword
; Northampton Community College
; CISC 225, Computer Organization

global _start		; exposes program entry point to the linker

section .text		; start of code segment

_start:





	; Write ASCII of num to the console
	mov		rax, 1					      ; system call for write
	mov		rdi, 1			      		; file handle, stdout
	mov		rsi, number_str  			; address of string to output
	mov		rdx, number_str_len		; number of bytes to output
	syscall					        		; invoke operating system call

	; End the program
	mov		rax, 0x3c				; system call for exit
	xor		rdi, rdi				; exit code 0
	syscall							; invoke operating system call

section .data		; start of initialized data segment

	number dq 2764921

section .bss		; start of uninitialized data segment

	number_str_len equ 21
	number_str resb number_str_len ; output string, 20 digits plus newline