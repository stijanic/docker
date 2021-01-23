# ----------------------------------------------------------------------------
# A 64-bit recursive implementation of the function
#
# Assemble, Link and Run:
#
#	as -g -c fact.s -o fact.o && ld -o fact fact.o && ./fact; echo $?
#
# ----------------------------------------------------------------------------

	.global	_start

	.text
_start:
	mov	$5, %rdi	# store immediate value for factorial calculation
	call	_factorial	# call _factorial

	# exit(factorial(%rdi))
	mov	%rax, %rdi	# result is in %rax, move it to %rdi to be returned as error_code - max value is 255 (5!)
	mov	$60, %rax	# system call 60 is exit
	syscall			# invoke operating system to exit

_factorial:
	cmp	$1, %rdi	# n <= 1? (flags are set)
	jnbe	L1		# if not, go do a recursive call (based on flags)
	mov	$1, %rax	# otherwise return 1
	ret
L1:
	push	%rdi		# save n on stack (also aligns %rsp!)
	dec	%rdi		# n-1
	call	_factorial	# factorial(n-1), result goes in %rax
	pop	%rdi		# restore n
	imul	%rdi, %rax	# n * factorial(n-1), stored in %rax
	ret
