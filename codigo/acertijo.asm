;
; Copyright (c) 2021 Alain (@AlainPlusPlus)
;
; Cascaron para juego de aventura de texto.
; Obtiene la tecla presionada por el usuario, reacciona a la opción y finaliza programa.
;

section .data           ;declara variables inicializadas
   ask db 'Pregunta/Acertijo',10,'¿Con [m]elon o con [s]andia?',10,'responde [m] o [s] para continuar: '
   askLen equ $- ask
   melon db 'MELON!!!'
   melLen equ $- melon
   sandia db 'SANDIA!!!'
   sanLen equ $- sandia
   newLine equ 10

section .bss            ;variables/espacios no inicializ@s
   res resb 1

section .text
   global _start

_start:
askme:
   mov ecx, ask
   mov edx, askLen
   call print

   mov eax, 3
   mov ebx, 2
   mov ecx, res
   mov edx, 5
   int 80h

   mov eax, [res]
   and eax,255
   cmp eax, 'm'
   jne sandiaRes

melonRes:
   mov ecx, melon
   mov edx, melLen
   call print
   jmp finish

sandiaRes:
   mov ecx, sandia
   mov edx, sanLen
   call print

   ; termina programa
finish:   
   mov eax, 1
   mov ebx, 0
   int 80h

print:       
   mov eax, 4
   mov ebx, 1
   int 80h
   ret 
