; Define variables en sección de datos
SECTION .DATA
   hello     db '¡Hola, mundo!',10 ;nuestra cadena
   helloLen  equ $-hello	  ;longitud de nuestra cadena	

; Código va en la sección de texto
SECTION .TEXT
   GLOBAL _start 

_start:
   mov eax,4            ; 'write' llamada al sistema = 4
   mov ebx,1            ; descriptor de archivo 1 = STDOUT
   mov ecx,hello        ; mensaje a escribir
   mov edx,helloLen     ; longitud del mensaje a escribir
   int 80h              ; llamada al kernel (interrupción)

   ; Termina programa 
   mov eax,1            ; 'exit' llamada al sistema = 1
   mov ebx,0            ; finaliza con código de error = 0
   int 80h              ; llamada al kernel (interrupción)
