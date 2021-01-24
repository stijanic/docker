gcc -g -std=c99 -pedantic att.c -o att && file att && ./att
rm att

gcc -g -masm=intel intel.c -o intel && file intel &&  ./intel
rm intel

gcc -g tsc.c -o tsc && file tsc && ./tsc
rm tsc
