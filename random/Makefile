	random: random.o 1.o
		gcc -no-pie -o random random.o 1.o

	random.o:
		gcc -c random.c

	1.o:
		nasm -f elf64 1.asm