nasm -g -f elf64 ascii.asm -o ascii.o && ld -o ascii ascii.o && file ascii && ./ascii; echo $?
rm ascii

nasm -g -f elf32 hello32.asm && ld -m elf_i386 -o hello32 hello32.o && file hello32 && ./hello32; echo $?
rm hello32

nasm -g -f elf64 hello32.asm -o hello64.o && ld -o hello64 hello64.o && file hello64 && ./hello64; echo $?
rm hello64

nasm -g -f elf64 helloany.asm && ld -o helloany helloany.o && file helloany && ./helloany; echo $?
rm helloany

nasm -g -f elf64 hello.asm && ld -o hello hello.o && file hello && ./hello; echo $?
rm hello

nasm -g -f elf64 helloyou.asm -o helloyou.o && ld -o helloyou helloyou.o && file helloyou && ./helloyou; echo $?
rm helloyou

rm *.o
