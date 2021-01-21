; ----------------------------------------------------------------------------------------
; To assemble and run:
;
;	nasm -g -f elf64 helloyou.asm -o helloyou.o && ld -o helloyou helloyou.o && file helloyou && ./helloyou; echo $?
; ----------------------------------------------------------------------------------------

section	.data
	msg1	db	'What is your name? '
	len1		equ	$ - msg1
	msg2	db	'Hello, '
	len2		equ	$ - msg2
	len3		equ	256
	errcd	equ	0
	
section .bss
	name		resb	16
	
section .text
	global	_start

_start:
	call	_printMsg1
	call	_readName
	call	_printMsg2
	call	_printName
	call	_exit

_exit:
	mov	rax, 60
	mov	rdi, errcd
	syscall

_printMsg1:
	mov	rax, 1
	mov	rdi, 1
	mov	rsi, msg1
	mov	rdx, len1
	syscall
	ret

_printMsg2:
	mov	rax, 1
	mov	rdi, 1
	mov	rsi, msg2
	mov	rdx, len2
	syscall
	ret

_readName:
	mov	rax, 0
	mov	rdi, 0
	mov	rsi, name
	mov	rdx, len3
	syscall
	ret

_printName:
	mov	rax, 1
	mov	rdi, 1
	mov	rsi, name
	mov	rdx, len3
	syscall
	ret
