//
// Copyright (c) 2021 Alain (@AlainPlusPlus)
//
// Realiza una suma de dos números enteros de un sólo dígito (0-9).
// Los valores estan "hard-coded" en el código
// El resultado es de un sólo dígito (0-9).
//

.equ JTAG_UART, 0xff201000

.global _start
_start:
   ldr r0, =JTAG_UART 	//cargar registro r0 con la dirección de la terminal JTAG_UART
   
   mov r1, #1 		//r1 <- número1
   mov r2, #5		//r2 <- número2
   
   add r3, r1, r2	//r3 = r1 + r2
   
   add r3, r3, #48	//r3 = r3 + 48 (caracter = resultado numerico a ASCII)
   str r3, [r0]  	//JTAG_UART <- mandar a imprimir resultado como caracter en terminal
   
   b .			//ciclo infinito usando bifurcación/"branch" a la dirección de la intrucción actual

