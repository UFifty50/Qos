CC=i686-elf-gcc
AS=nasm
BOOT_DIR=boot/

.PHONY: all kernel boot

default: os

kernel: kernel.c
	$(CC) -c kernel.c -o kernel.o -std=gnu99 -ffreestanding -O2 -Wall -Wextra

boot: $(BOOT_DIR)boot.asm
	$(AS) -felf32 boot/boot.asm -o boot/boot.o

os: boot kernel
	$(CC) -T linker.ld -o Qos.bin -ffreestanding -O2 -nostdlib $(BOOT_DIR)boot.o kernel.o -lgcc

clean:
	-rm -f *.o boot/*.o *.bin

push: /usr/bin/git
	git add .
	git commit
	git push
