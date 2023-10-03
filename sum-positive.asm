; Northampton Community College
; CISC 225, Computer Organization
; Exercise: Sum Positive Elements of Array

global _start		; exposes program entry point to the linker

section .text		; start of code segment

_start:




	; End the program
	mov		rax, 0x3c				; system call for exit
	xor		rdi, rdi				; exit code 0
	syscall							; invoke operating system call

section .data		; start of initialized data segment

	array1 dq 10,-3,21,6,-7,0,14,8
	array1_len equ ($-array1)/8
	sum dq 0 ; sum of positive elements in array1, 59

section .bss		; start of uninitialized data segment
