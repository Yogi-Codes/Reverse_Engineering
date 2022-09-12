global main



















section .text


_main:
mov rax ,2
add rax,3

mov rax,2
sub rax,2


mov rax,6
imul rbx,rax,2




mov rdx, 0
mov  rax,100
mov rbx ,2
idiv rbx


_Exit:

mov rax ,60
mov rdi,0
syscall
