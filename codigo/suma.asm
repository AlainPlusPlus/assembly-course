;
; Copyright (c) 2021 Alain (@AlainPlusPlus)
;
; Realiza una suma de dos números enteros de un sólo dígito (0-9).
; Toma los valores dados por el usuario.
; El resultado es de un sólo dígito (0-9).
;

section .data 		;declara variables inicializadas
   ask1 db 'primer valor:'
   ask1Len equ $- ask1
   ask2 db 'segundo valor:'
   ask2Len equ $- ask2
   result db 'resultado:'
   resultLen equ $- result
   newLine equ 10

section .bss 		;variables/espacios no inicializ@s
   num1 resb 1
   num2 resb 1
   res resb 2

section .text
   global _start

_start:
ask_num1:
   mov ecx, ask1
   mov edx, ask1Len
   mov eax, 4
   mov ebx, 1
   int 80h

   ;obten primer valor
   mov eax, 3
   mov ebx, 2
   mov ecx, num1
   mov edx, 5
   int 80h

   mov ecx, ask2
   mov edx, ask2Len
   mov eax, 4
   mov ebx, 1
   int 80h

   ;obten segundo valor
   mov eax, 3
   mov ebx, 2
   mov ecx, num2
   mov edx, 5
   int 80h

   mov ecx, result
   mov edx, resultLen
   mov eax, 4
   mov ebx, 1
   int 80h

   ;obtiene valores numericos
   mov eax, [num1]
   sub eax, 48
   mov ebx, [num2]
   sub ebx, 48

   ;suma
   add eax, ebx

   add eax, 48
   mov [res], eax
   mov [res+1], BYTE newLine

   mov ecx, res
   mov edx, 2
   mov eax, 4
   mov ebx, 1
   int 80h

   ; termina programa 
   mov eax, 1
   mov ebx, 0
   int 80h
