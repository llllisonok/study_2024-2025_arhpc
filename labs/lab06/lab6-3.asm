;--------------------------------
; Программа вычисления выражения
;--------------------------------

%include 'in_out.asm' 			; подключение внешнего файла

	SECTION .data
	
	div: DB 'Результат: ',0
	rem: DB 'Остаток от деления: ',0
	SECTION .text
	GLOBAL _start
	_start:
	
; ---- Вычисление выражения
	mov eax,4 			; EAX=4
	mov ebx,6 			; EBX=6
	mul ebx 			; EAX=EAX*EBX
	add eax,2 			; EAX=EAX+2
	xor edx,edx 			; обнуляем EDX для корректной работы div
	mov ebx,5 			; EBX=5
	div ebx 			; EAX=EAX/5, EDX=остаток от деления

	mov edi,eax 			; запись результата вычисления в 'edi'
	
; ---- Вывод результата на экран
	mov eax,div 			; вызов подпрограммы печати сообщения 'Результат: '
	call sprint 			
	mov eax,edi 			; вызов подпрограммы печати значения из 'edi' в виде символов
	call iprintLF 			
	
	mov eax,rem 			; вызов подпрограммы печати сообщения 'Остаток от деления: '
	call sprint 			
	mov eax,edx 			; вызов подпрограммы печати значения из 'edx' (остаток) в виде символов
	call iprintLF 			
	
	call quit 			; вызов подпрограммы завершения
	
	
