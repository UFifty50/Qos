CC=i686-elf-gcc
ASM=nasm

kernel: kernel.c
	$(CC) -c kernel.c -o kernel.o -std=gnu99 -ffreestanding -O2 -Wall -Wextra

boot: boot/boot.asm
	nasm -felf32 boot/boot.asm -o boot/boot.o

os: boot kernel
	$(CC) -T linker.ld -o Qos.bin -ffreestanding -O2 -nostdlib boot/boot.o kernel.o -lgcc

clean:
	-rm -f *.o boot/*.o *.bin
