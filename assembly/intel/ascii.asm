; ----------------------------------------------------------------------------------------
; To assemble and run:
;
;	nasm -g -f elf64 ascii.asm -o ascii.o && ld -o ascii ascii.o && file ascii && ./ascii; echo $?
; ----------------------------------------------------------------------------------------

section .data
	digit	db	0,0xa
	
section .text
	global	_start

_start:
	mov rax, 7		; put one digit in rax
	call _printRAXDigit
	call _exit
	
_printRAXDigit:
	add	rax, 48		; convert number to ascii by adding 48
	mov	[digit], al	; move first byte (low) from rax to digit while keeping second byte (high) 0xa - 10 - '\n'
	mov	rax, 1		; syscall write
	mov	rdi, 1		; file descriptor stdout
	mov	rsi, digit	; digit
	mov rdx, 2		; length = digit + '\n'
	syscall
	ret

_exit:
	mov	rdi, [digit]	; return ascii value of printed digit - echo $?
	mov	rax, 60		; syscall exit
	syscall
