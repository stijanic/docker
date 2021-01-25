# ----------------------------------------------------------------------------------------
# cpuid_printf32.s Sample program to extract the processor Vendor ID using C library calls
#
# To Assemble, Link and Run:
#
#	as --32 -g -c cpuid_printf32.s -o cpuid_printf32.o && ld -dynamic-linker /lib/ld-linux.so.2 -m elf_i386 -o cpuid_printf32 -lc cpuid_printf32.o && ./cpuid_printf32; echo $?
# or
#	gcc -m32 -g -static -o cpuid_printf32 cpuid_printf32.s && file cpuid_printf32 && ./cpuid_printf32; echo $?
#
# ----------------------------------------------------------------------------------------

.section .data
output:
	.asciz "The processor Vendor ID is '%s'\n"

.section .bss
	.lcomm buffer, 12

.section .text
.globl main

main:
	movl	$0, %eax	# We want Vendor ID string - option 0
	cpuid			# Fetch CPU information to ebx, edx, ecx in little-endian format

	movl	$buffer, %edi	# Place string in edi
	movl	%ebx, (%edi)	# Move low 4 bytes of result to string at position 28
	movl	%edx, 4(%edi)	# Move middle 4 bytes of result to string at position 32
	movl	%ecx, 8(%edi)	# Move last 4 bytes of result to string at position 36

	pushl	$buffer		# printf takes args from stack
	pushl	$output
	call	printf		# call printf
	addl	$8, %esp	# clear parameters places on the stack 

	pushl	$0		# exit takes args from stack
	call	exit		# call exit
