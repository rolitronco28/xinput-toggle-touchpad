# xinput-toggle-touchpad
execute this script to alternate between Enable &amp; Disable your laptop touchpad device.

# How to use.
1 - Specify your device ID using ``xinput list`` in the script file.

2 - Execute the script ``./toggle-touchpad.sh`` .

> you can copy this file to ``/usr/local/bin/`` to use it in rofi or dmenu.

# Dependences.
- xorg-xinput
- libinput
> ARCH LINUX $ ``sudo pacman -S libinput xorg-xinput``
