%include 'in_out.asm'
SECTION .data
	div: DB 'Результат: ',0
SECTION .text
GLOBAL _start
_start:
; ---- Вычисление выражения (3+2)*4+5
	mov ebx,3
	mov eax,2
	add eax,ebx 			; изменен порядок регистров
	mov ecx,4
	mul ecx
	add eax,5			; изменен регистр
	mov edi,eax			; изменен регистр
; ---- Вывод результата на экран
	mov eax,div
	call sprint
	mov eax,edi
	call iprintLF
	call quit
