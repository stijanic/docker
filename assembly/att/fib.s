# -----------------------------------------------------------------------------
# A 64-bit Linux application that writes the first 90 Fibonacci numbers.
# It needs to be linked with a C library.
#
# To Assemble, Link and Run:
#
#	gcc -g -static fib.s -o fib && ./fib
#
# -----------------------------------------------------------------------------

.section .data
format:
	.asciz	"%20ld\n"

.section .text
.global	main

main:
	push	%rbx		# we have to save this since we use it

	mov	$10, %rcx	# rcx will countdown to 0 - max value 93
	xor	%rax, %rax	# rax will hold the current number
	xor	%rbx, %rbx	# rbx will hold the next number
	inc	%rbx		# rbx is originally 1

_print:
	# We need to call printf, but we are using rax, rbx, and rcx.  printf
	# may destroy rax and rcx so we will save these before the call and
	# restore them afterwards.

	push	%rax		# caller-save register
	push	%rcx		# caller-save register

	mov	$format, %rdi	# set 1st parameter (format)
	mov	%rax, %rsi	# set 2nd parameter (current_number)
	xor	%rax, %rax	# because printf is varargs

	# Stack is already aligned because we pushed three 8 byte registers
	call	printf		# printf(format, current_number)

	pop	%rcx		# restore caller-save register
	pop	%rax		# restore caller-save register

	mov	%rax, %rdx	# save the current number
	mov	%rbx, %rax	# next number is now current
	add	%rdx, %rbx	# get the new next number
	dec	%rcx		# count down
	jnz	_print		# if not done counting, do some more

	pop	%rbx		# restore rbx before returning
	ret
