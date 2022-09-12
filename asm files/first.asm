global _start








section .text




_start:

; print hello world

mov rax ,1
mov rdi ,1
mov rsi ,hello
mov rdx , 11

syscall

;exiting
  

mov rax,60
mov rdi ,69



syscall

section .data


hello : db   'Hello World'


