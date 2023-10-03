; Northampton Community College
; CISC 225, Computer Organization
; Exercise: Find absolute value of x-y

global _start           ; expose program entry point

section .text           ; start of code segment

_start:


    ; End the program
    mov rax,0x3c            ; system call for exit 
    xor rdi,rdi             ; exit code 0
    syscall                 ; invoke operating system call 

section .data           ; start of initialized data segment

    x dq -7
    y dq 3

section .bss            ; start of uninitialized data segment 

    abs resq 1