# ----------------------------------------------------------------------------------------
#
# To Assemble, Link and Run:
#
#	as -g --32 -c fact32.s -o fact32.o && ld -m elf_i386 -o fact32 fact32.o && ./fact32; echo $?
# or
#	yasm -g dwarf2 -f elf32 -p gas fact32.s -o fact32.o -l fact32.lst && ld -m elf_i386 -o fact32 fact32.o && ./fact32; echo $?
#
# ----------------------------------------------------------------------------------------

	.global	_start

	.text
_start:
	pushl	$5
	call	_fact
	addl	$4, %esp

	movl	%eax, %ebx	# move result (eax) to error_code register of sys_exit - max value is 255 (5!)
	movl	$1, %eax        # sys_exit
	int	$0x80

_fact:
	movl	4(%esp), %ecx
	movl	$1, %eax
1:
	mul	%ecx
	loop	1b		# jump to label 1 and decrement ecx
	ret
