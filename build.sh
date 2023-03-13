#!/bin/bash
mkdir /output -p
apt install git grub-pc-bin grub-efi squashfs-tools mtools xorriso -y
for variant in minimal x11 ; do
    git clone https://gitlab.com/turkman/devel/assets/mkiso $variant
    cd $variant
    if [ -f ../$variant.sh ] ; then
        install ../$variant.sh custom
    fi
    bash mkiso.sh
    mv turkman.iso /output/turkman-$variant.iso
    cd ..
done
