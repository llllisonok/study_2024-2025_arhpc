; hello.asm
SECTION .data 				; начало секции данных
	hello: DB 'Hello world!',10 	; 'Hello world!' плюс символ перевода строки
	helloLen: EQU $-hello 		; длина строки hello
	
SECTION .text 				; начало секции кода
	GLOBAL _start
	
_start: 				; точка входа в программу
	mov eax,4 			; системный вызов для записи (sys_write)
	mov ebx,1 			; описатель файла '1' - стандартный вывод
	mov ecx,hello 			; адрес строки hello в ecx
	mov edx,helloLen 		; размер строки hello
	int 80h 			; вызов ядра
	mov eax,1 			; системный вызов для выхода (sys_exit)
	mov ebx,0 			; выход с кодом возврата '0' (без ошибок)
	int 80h 			; вызов ядра
