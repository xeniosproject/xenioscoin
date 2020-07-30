
Debian
====================
This directory contains files used to package xeniosd/xenios-qt
for Debian-based Linux systems. If you compile xeniosd/xenios-qt yourself, there are some useful files here.

## xenios: URI support ##


xenios-qt.desktop  (Gnome / Open Desktop)
To install:

	sudo desktop-file-install xenios-qt.desktop
	sudo update-desktop-database

If you build yourself, you will either need to modify the paths in
the .desktop file or copy or symlink your xenios-qt binary to `/usr/bin`
and the `../../share/pixmaps/xenios128.png` to `/usr/share/pixmaps`

xenios-qt.protocol (KDE)

