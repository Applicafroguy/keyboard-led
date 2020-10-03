# keyboard-led
![Screenshot of keyboard-led](https://github.com/Applicafroguy/keyboard-led/raw/master/led.jpg)

# Installing keyboard-led on Arch Linux

All you need to do is download the PKGBUILD from this repository.  Then run the following command:

	makepkg -cf

This will create a file that ends in .pkg.tar.xz (for example, keyboard-led-0.1-1-x86_64.pkg.tar.xz).  Then run:

	sudo pacman -U *.pkg.tar.xz

Alternately, you could also install keyboard-led from the AUR using an AUR helper such as yay:

	yay -S keyboard-led

# Usage

    keyboardled 

# The Script is Located in /opt/keyboard-led/keyboardled

The source for keyboard-led is placed in:

	/opt/keyboard-led/keyboardled

	
