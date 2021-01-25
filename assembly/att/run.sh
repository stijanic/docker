gcc -m32 -g -static -nostdlib -o cpuid32 cpuid32.s && file cpuid32 && ./cpuid32; echo $?
rm cpuid32

gcc -m32 -g -static -o cpuid_printf32 cpuid_printf32.s && file cpuid_printf32 && ./cpuid_printf32; echo $?
rm cpuid_printf32

gcc -m32 -g -static -nostdlib -o fact32 fact32.s && file fact32 && ./fact32; echo $?
rm fact32

gcc -g -static -nostdlib -o fact fact.s && file fact && ./fact; echo $?
rm fact

gcc -g -static -o fib fib.s && file fib && ./fib; echo $?
rm fib

gcc -g -static -nostdlib -o hello hello.s && file hello &&  ./hello; echo $?
rm hello
