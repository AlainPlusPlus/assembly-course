section .text
   global _start

_start:
   mov ecx, ask
   mov edx, ask1Len
   call print

   ;obten primer valor
   mov eax, 3
   mov ebx, 2
   mov ecx, nombre
   mov edx, 5
   int 80h

   ;aquí va la instrucción de la pregunta
   mov [res], eax
   mov [res+1], BYTE newLine

   mov ecx, res
   mov edx, 2
   call print

   ;termina programa 
   mov eax, 1
   mov ebx, 0
   int 80h
   
print:       
   mov eax, 4
   mov ebx, 1
   int 80h
   ret 
