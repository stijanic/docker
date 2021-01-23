# ----------------------------------------------------------------------------------------
# Writes "Hello, World" to the console using only system calls. Runs on 64-bit Linux only.
# To assemble and run:
#
#	as -g -c hello.s -o hello.o && ld -o hello hello.o && ./hello; echo $?
# or
#	gcc -g -static -nostdlib -o hello hello.s && ./hello; echo $?
#
# To disassemble:
#
#	objdump -d -rw -Matt hello.o
#
# To display registers in gdb:
#
# info registers
# ----------------------------------------------------------------------------------------

	.global	_start

	.text
_start:
	call	_printHello

	# exit(0)
	mov	$60, %rax	# system call 60 is exit
	xor	%rdi, %rdi	# we want return code 0
	syscall			# invoke operating system to exit

_printHello:
	# write(1, msg, 14)
	mov	$1, %rax	# system call 1 is write
	mov	$1, %rdi	# file handler 1 is stdout
	mov	$msg, %rsi	# address of string to output
	mov	$14, %rdx	# number of bytes
	syscall			# invoke operating system to do the write
	ret

msg:
	.ascii	"Hello, world!\n"
