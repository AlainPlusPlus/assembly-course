# Ensamblador 2021

Programas en ensamblador x86 para el curso de Arquitectura de computadoras.

## Ensamblar, ligar y correr los programas desde la terminal en Linux
1. Instalar [NASM](https://github.com/netwide-assembler/nasm)
- Verificar si ya esta instalado
```
nasm -v
```
- Si no esta instalado, lo instalas
```
apt install nasm
```
2. Ensamblar el programa
```
nasm -f elf64 [NOMBRE_DEL_ARCHIVO] -o [NOMBRE_DEL_ARCHIVO_OBJETO]
```
3. Ligar el programa
```
ld [NOMBRE_DEL_ARCHIVO_OBJETO] -o [NOMBRE_DEL_ARCHIVO_BINARIO]
```
4. Correr/ejecutar el archivo binario (*revisar que se tienen permisos para correr el programa*)
```
./[NOMBRE_DEL_ARCHIVO_BINARIO]
```
### Ejemplo (*hola.asm*)
```
nasm -f elf64 hola.asm -o hola.o
ld hola.o -o hola
./hola
```
### Alternativa (todo en una sola linea)
```
nasm -f elf64 hola.asm && ld hola.o && ./a.out
```
