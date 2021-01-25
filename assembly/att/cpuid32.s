# ----------------------------------------------------------------------------------------
# cpuid32.s Sample program to extract the processor Vendor ID
#
# To Assemble, Link and Run:
#
#	as --32 -g -c cpuid32.s -o cpuid32.o && ld -m elf_i386 -o cpuid32 cpuid32.o && ./cpuid32; echo $?
# or
#	gcc -m32 -g -static -nostdlib -o cpuid32 cpuid32.s && file cpuid32 && ./cpuid32; echo $?
#
# To print variable in gdb:
#	print (char[42])output
#
# To print memory location content as character (c) reading bytes (b):
#	x/42cb $edi
#
# To set a breakpoint at address _start + 1:
#	break *_start+1
# ----------------------------------------------------------------------------------------

.section .data
output:
	.ascii "The processor Vendor ID is 'xxxxxxxxxxxx'\n"

.section .text
.globl _start

_start:
	nop			# Now we can set a breakpoint here
	movl	$0, %eax	# We want Vendor ID string - option 0
	cpuid			# Fetch CPU information to ebx, edx, ecx in little-endian format

	movl	$output, %edi	# Place string in edi
	movl	%ebx, 28(%edi)	# Move low 4 bytes of result to string at position 28
	movl	%edx, 32(%edi)	# Move middle 4 bytes of result to string at position 32
	movl	%ecx, 36(%edi)	# Move last 4 bytes of result to string at position 36

	movl	$4, %eax	# sys_write
	movl	$1, %ebx	# stdout
	movl	$output, %ecx	# string address
	movl	$42, %edx	# length
	int	$0x80		# syscall

	movl	$1, %eax	# sys_exit
	movl	$0, %ebx	# error_code
	int	$0x80		# syscall
