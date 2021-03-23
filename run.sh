if [[ -f /usr/bin/qemu-system-i386 ]]; then
  qemu=True
else
  printf "qemu is used to run Qos, so please install qemu-system first.\n"
  printf "on any Debian-based distro: sudo apt install qemu-system\n"
fi

if qemu; then

