;
; Copyright (c) 2021 Alain (@AlainPlusPlus)
;
; Programa básico de "hello, world!" en español.
;

;Define espacios de memoria en sección de datos
.data
   hello db '¡Hola, mundo!'   ; cadena a imprimir
   helloLen  equ $- hello     ; longitud de cadena 

;Instrucciones van en la sección de código
.code
_start:
   mov eax, 4           ; 'write' llamada al sistema = 4
   mov ebx, 1           ; descriptor de archivo 1 = STDOUT
   lea ecx, hello 	; carga dirección efectiva (Load Effective Address) de mensaje a escribir
   mov edx, helloLen    ; longitud del mensaje a escribir
   int      80h         ; llamada al kernel (interrupción)

   ;Termina programa 
   mov eax, 1           ; 'exit' llamada al sistema = 1
   mov ebx, 0           ; finaliza con código de error = 0
   int      80h         ; llamada al kernel (interrupción)
end _start
