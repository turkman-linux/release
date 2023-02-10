#!/bin/bash
mkdir /output -p
apt install git grub-pc-bin grub-efi squashfs-tools mtools xorriso -y
git clone https://gitlab.com/turkman/devel/assets/mkiso mkiso
cd mkiso
bash mkiso.sh
mv turkman.iso /output/turkman-minimal.iso
