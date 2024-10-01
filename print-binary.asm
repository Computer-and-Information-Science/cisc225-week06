; Print binary value of AL Register to console
; Northampton Community College
; CISC 225, Computer Organization

global _start		; exposes program entry point to the linker

section .text		; start of code segment

_start:
  ; Sample value in AL
  mov AL,0xa6



	; Write string to the console
	mov		rax, 1					; system call for write
	mov		rdi, 1					; file handle, stdout
	mov		rsi, al_str			; address of string to output
	mov		rdx, al_str_len		; number of bytes to output
	syscall							; invoke operating system call

	; End the program
	mov		rax, 0x3c				; system call for exit
	xor		rdi, rdi				; exit code 0
	syscall							; invoke operating system call

section .data		; start of initialized data segment

	al_str db "00000000",0xa		; string with newline
	al_str_len equ $-al_str	    ; length of hello_str

section .bss		; start of uninitialized data segment
