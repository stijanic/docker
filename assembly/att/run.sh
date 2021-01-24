gcc -m32 -g -static -nostdlib -o fact32 fact32.s && file fact32 && ./fact32; echo $?
rm fact32

gcc -g -static -nostdlib -o fact fact.s && file fact && ./fact; echo $?
rm fact

gcc -g -static fib.s -o fib && file fib && ./fib; echo $?
rm fib

gcc -g -static -nostdlib -o hello hello.s && file hello &&  ./hello; echo $?
rm hello
