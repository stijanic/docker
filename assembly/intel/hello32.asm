; ----------------------------------------------------------------------------------------
; "Hello, world!" in assembly language for Linux using 32-bit syscalls
;
; To assemble and run in 32-bit:
;
;	nasm -g -f elf32 hello32.asm && ld -m elf_i386 -o hello32 hello32.o && file hello32 && ./hello32; echo $?
;
; To assemble and run in 64-bit:
;
;	nasm -g -f elf64 hello32.asm -o hello64.o && ld -o hello64 hello64.o && file hello64 && ./hello64; echo $?
; ----------------------------------------------------------------------------------------

section	.data
	msg	db	'Hello, world!', 0xa	; string with '\n'
	len	equ	$ - msg					; define length of  string = current instruction address at assembly time - msg address

section	.text
  global _start		; must be declared for linker (ld)

_start:					; give the entry point to linker
	call _printHello	; call function _printHello
	mov	eax, 1		; system call number (sys_exit)
	mov	ebx, 0		; exit code 0
	int	0x80		; call kernel

_printHello:
	mov	edx, len	; message length
	mov	ecx, msg	; message to write
	mov	ebx, 1		; file descriptor (stdout)
	mov	eax, 4		; system call number (sys_write)
	int	0x80		; call kernel
	ret					; return from function
