
global start








section .text



_start:

mov rax ,1
mov rdi ,1
mov rsi,hello 
mov rdx ,hello_length
syscall


_user_input:

mov rax,0 
mov rdi,0
mov rsi,input
mov rdx,100
syscall
mov rbx,rax   ;taking output of input syscall in rax

_printing_hello:

mov rax,1
mov rdi,1
mov rsi,msg
mov rdx,msg_length
syscall

_printing_usr_input:

mov rax,1
mov rdi,1
mov rsi,input
mov rdx,rbx
syscall





exiting_program:

mov rax,60  
mov rdi , 22
syscall 






section .data  
hello : db 'Enter Your Name:'
hello_length : equ $-hello
msg : db 'Hello, '
msg_length : equ $-msg

section .bss

input : resb 64





