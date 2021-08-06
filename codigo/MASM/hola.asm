.data
   hello db '¡Hola, mundo!'
   helloLen  equ $-hello

.code
_start:
   mov eax, 4
   mov ebx, 1
   lea ecx, hello ;carga dirección efectiva (Load Effective Address)
   mov edx, helloLen
   int      80h

   mov eax, 1
   mov ebx, 0
   int      80h
end _start
