%include 'in_out.asm'

SECTION .data
X1 DB 'Введите значение X:',0
A1 DB 'Введите значение a:',0
otv DB 'Ответ: ',0

SECTION .bss
X RESB 20
A RESB 20
F RESB 20
SECTION .text
GLOBAL _start
_start:

mov eax,X1
call sprint

mov ecx,X
mov edx,10
call sread

mov eax,X
call atoi
mov [X],eax

mov eax,A1
call sprint

mov ecx,A
mov edx,10
call sread

mov eax,A
call atoi
mov [A],eax

mov ecx,[X]

cmp ecx,4
jl check_or
mov eax,[A]
mov ebx,[X]
imul ebx
mov [F],eax
jmp fin

check_or:
mov ecx, [X]
add ecx, 4
mov [F],ecx

fin:
mov eax,otv
call sprint
mov eax,[F]
call iprintLF
call quit
