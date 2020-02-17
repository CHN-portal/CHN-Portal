
Debian
====================
This directory contains files used to package cbdhealthnetworkd/cbdhealthnetwork-qt
for Debian-based Linux systems. If you compile cbdhealthnetworkd/cbdhealthnetwork-qt yourself, there are some useful files here.

## cbdhealthnetwork: URI support ##


cbdhealthnetwork-qt.desktop  (Gnome / Open Desktop)
To install:

	sudo desktop-file-install cbdhealthnetwork-qt.desktop
	sudo update-desktop-database

If you build yourself, you will either need to modify the paths in
the .desktop file or copy or symlink your cbdhealthnetwork-qt binary to `/usr/bin`
and the `../../share/pixmaps/cbdhealthnetwork128.png` to `/usr/share/pixmaps`

cbdhealthnetwork-qt.protocol (KDE)

