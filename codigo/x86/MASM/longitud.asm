;
; Copyright (c) 2021 Alain (@AlainPlusPlus)
;
; Imprime la longitud (0-9 caracteres) de una cadena con tu nombre (myName).
;

.data
   result db 'longitud de tu nombre:'
   resultLen equ $-result
   myName db 'nombre'
   myNameLen  equ $-myName

   len2char db 1 dup (?) 	;se puede usar una variable (espacio) no inicializada

.code
_start:
   lea ecx, result 		;carga dirección efectiva (Load Effective Address)
   mov edx, resultLen
   mov eax, 4
   mov ebx, 1
   int 80h

   mov dl, myNameLen 		;utilizamos sólo la parte baja (1 byte) del registro dx
   add dl, 48
   mov [len2char], dl

   lea cx, len2char
   mov dl, 1
   mov eax, 4
   mov ebx, 1
   int 80h

   ; Termina programa
   mov eax, 1
   mov ebx, 0
   int 80h
end _start
