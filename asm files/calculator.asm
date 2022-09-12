%include "util.asm"



GLOBAL _start		



section .text

_start:
 
 mov rdi,num1
 call printstr
 call readint
 mov [user_num1],rax
 mov rdi,num2
 call printstr
 call readint
 mov [user_num2],rax
 mov rdi,operators
 call printstr
 mov rdi,user_opr
 mov rsi , 2
 call readstr
 
 
 
 cmp_operators:
 mov rdi,[user_opr]
 cmp rdi,43
 je addition
 cmp rdi , 45
 je substraction
 cmp rdi,42
 je multiply
 cmp rdi,47
 je division
 
 exception:
 
 mov rdi ,error_msg
 call printstr
 call endl
 call exit0
 
addition:
mov rdi, [user_num1]
add rdi, [user_num2]
call end

substraction:
mov rdi , [user_num1]
sub rdi ,[user_num2]
call end



multiply:
mov rdi ,[user_num1]
imul rdi,[user_num2]
call end


division:
mov rdx , 0
mov rax,[user_num1]
mov rbx,[user_num2]
idiv rbx
mov rdi,rax
call end




end:
call printint
call endl
call exit0



section .data

num1: db "ENTER THE FIRST NUMBER : ",0
num2: db "ENTER THE SECOND NUMBER : ",0
operators : db "enter the operation to be perfoemed : (+ , - , * , /)  :   ",0
error_msg : db "cannot perform this operation : ",0





section .bss


user_num1 : resb 8
user_num2 : resb 8
user_opr : resb 2
