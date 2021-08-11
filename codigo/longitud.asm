;
; Copyright (c) 2021 Alain (@AlainPlusPlus)
;
; Imprime la longitud (0-9 caracteres) de una cadena con tu nombre (myName).
;


section .data
   result db 'longitud de tu nombre:'
   resultLen equ $-result
   myName db 'nombre'
   myNameLen  equ $-myName

section .bss
   len2char resb 1

section .text
   global _start

_start:
   mov ecx,result
   mov edx,resultLen
   mov eax,4
   mov ebx,1
   int 80h

   mov edx,myNameLen
   add edx,48
   mov [len2char],edx

   mov ecx,len2char
   mov edx,1
   mov eax,4
   mov ebx,1
   int 80h

   ; Termina programa 
   mov eax,1
   mov ebx,0
   int 80h
