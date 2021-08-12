;variables inicializadas
section .data
   ads db 'Dirección:'
   adsLen equ $- ads
   var db 'A'
   varLen equ $- var
   newLine equ 10

;variables/espacios no inicializ@s
section .bss
   var2 resb 1

section .text
   global _start

_start:
   mov ecx, ads
   mov edx, adsLen
   call print
    
   mov eax, var             ;mueve dirección de memoria donde se almacenó la variable var a registro eax. Utiliza corchetes cuadrados para acceder al caracter.
   mov [var2], eax

   mov ecx, var2
   mov edx, 1
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
