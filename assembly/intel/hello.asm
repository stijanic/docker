; ----------------------------------------------------------------------------------------
; Writes "Hello, World!" to the console using 64-bit system calls.
; Runs on 64-bit Linux only. 
;
; To assemble and run:
;
;	nasm -g -f elf64 hello.asm && ld -o hello hello.o && file hello && ./hello; echo $?
;
; To disassemble:
;
;	objdump -d -rw -Mintel hello.o	#Intel syntax
;	objdump -d -rw -Matt hello.o		#AT&T syntax
; ----------------------------------------------------------------------------------------

section .data
	text	db	"Hello, World!", 10
	len	equ	$ - text

section .text
	global _start

_start:
	call _printHello

	mov	rax, 60
	mov	rdi, 0
	syscall

_printHello:
	mov	rax, 1
	mov	rdi, 1
	mov	rsi, text
	mov	rdx, len
	syscall
	ret
