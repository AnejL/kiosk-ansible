# Use of etcher script

The script flashes spefied IMG file to a specified SD card (or other disk device).

The script takes two arguments

1. Path to the disk image
	1. e.g. /home/user/Downloads/pi.img
	1. e.g. /home/user/Downloads/pi.img.gz
	1. e.g. ../pi.img
1. Disk device name
	1. e.g. /dev/mmcblk0
	1. e.g. /dev/sda

Usage: 

> ./etcher /home/user/Downloads/pi-latest.img /dev/mmcblk0
