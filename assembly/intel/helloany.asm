; ----------------------------------------------------------------------------------------
; Writes any string to the console using 64-bit system calls.
; Runs on 64-bit Linux only.
;
; To assemble and run:
;
;	nasm -g -f elf64 helloany.asm && ld -o helloany helloany.o && file helloany && ./helloany; echo $?
;
; To disassemble:
;
;	objdump -d -rw -Mintel hello.o	#Intel syntax
;	objdump -d -rw -Matt hello.o	#AT&T syntax
; ----------------------------------------------------------------------------------------

section .data
	text	db "text: Hello, World!", 0xa, 0

section .text
	global	_start

_start:
	mov	rax, text
	call	_print

	mov	rax, 60		; sys_exit
	mov	rdi, rbx	; set error_code to length of string including '\n'
	syscall

_print:
	push	rax		; push the address of first byte of string on stack
	mov	rbx, 0		; set counter to 0

_printLoop:
	inc	rax		; step through string using rax as pointer to the string
	inc	rbx		; increment the counter
	mov	cl, [rax]	; move the first byte from rax (64bit) to cl (8bit) of rcx
	cmp	cl, 0		; check if the first byte is 0 (end of string)
	jne	_printLoop	; if not keep looping

	mov	rax, 1		; sys_write
	mov	rdi, 1		; stdout
	pop	rsi		; pop the address of string from stack (rax)
	mov	rdx, rbx	; give the length that we calculated using the counter
	syscall
	ret
