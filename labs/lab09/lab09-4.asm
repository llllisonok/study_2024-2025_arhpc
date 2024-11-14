%include 'in_out.asm'

SECTION .data
	prim DB 'f(x)=30x-11',0
	otv DB 'Результат: ',0
SECTION .text
GLOBAL _start

_start:

	pop ecx
	pop edx
	sub ecx,1
	mov esi,0
	mov eax,prim
	call sprintLF
next:
	cmp ecx,0
	jz _end

	pop eax
	call atoi
	call fir
	add esi,eax

	loop next

_end:
	mov eax,otv
	call sprint
	mov eax,esi
	call iprintLF
	call quit

fir:
	mov ebx,30
	mul ebx
	sub eax,11
	ret
