#!/bin/sh
#X11 install
ymp repo --update --allow-oem --ignore-gpg
ymp it xinit xorg-server xterm elogind freetype xauth xkbcomp xkeyboard-config @x11.drivers --no-emerge --allow-oem
rc-update add elogind
rc-update add eudev
rc-update add xinit
ymp clean --allow-oem
exit 0
