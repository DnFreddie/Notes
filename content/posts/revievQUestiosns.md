+++
title = 'revievQUestiosns'
date = 2024-07-22T09:10:24+02:00
draft = false
+++

    1. What program does the workstation firmware start at boot time?
A. A bootloader
B. The fsck program
C. The Windows OS
D. The mount command
E. The mkinitrd program
2. Where does the firmware first look for a Linux bootloader program?
A. The /boot/grub folder
B. The Master Boot Record (MBR)
C. The /var/log folder
D. A boot partition
E. The /etc folder
3. The ______ command allows us to examine the most recent boot messages.
A. fsck
B. init
C. mount
D. dmesg
E. mkinitrd
4. What folder do most Linux distributions use to store boot logs?
A. /etc
B. /var/messages
C. /var/log
D. /boot
E. /proc
5. Where does the workstation BIOS attempt to find a bootloader program? (Choose all
that apply.)
A. An internal hard drive
B. An external hard drive
C. A DVD drive
D. A USB memory stick
E. A network server
Review Questions 153
6. Where is the Master Boot Record located? (Choose all that apply.)
A. The first sector of the first hard drive on the system
B. The boot partition of any hard drive on the system
C. The last sector of the first hard drive on the system
D. Any sector on any hard drive on the system
E. The first sector of the second hard drive on the system
7. The EFI System Partition (ESP) is stored in the _______ directory on Linux systems.
A. /boot
B. /etc
C. /var
D. /boot/efi
E. /boot/grub
8. What file extension do UEFI bootloader files use?
A. .cfg
B. .uefi
C. .lst
D. .conf
E. .efi
9. Which was the first bootloader program used in Linux?
A. GRUB Legacy
B. LILO
C. GRUB2
D. SYSLINUX
E. ISOLINUX
10. Where are the GRUB Legacy configuration files stored?
A. /boot/grub
B. /boot/efi
C. /etc
D. /var
E. /proc
11. Where are GRUB2 configuration files stored? (Choose all that apply.)
A. /proc
B. /etc/grub.d
C. /boot/grub
D. /boot/efi
E. /var
154 Chapter 5 ■ Explaining the Boot Process
12. You must run the ______ command to generate the GRUB2 grub.cfg configuration file.
A. mkinitrd
B. mkinitramfs
C. grub-mkconfig
D. grub-install
E. fsck
13. What command must you run to save changes to a GRUB Legacy boot menu?
A. mkinitrd
B. mkinitramfs
C. grub-mkconfig
D. grub-install
E. fsck
14. The ____ firmware method has replaced BIOS on most modern IBM-compatible computers.
A. FTP
B. UEFI
C. PXE
D. NFS
E. HTTPS
15. What memory area does Linux use to store boot messages?
A. BIOS
B. The GRUB bootloader
C. The MBR
D. The initrd RAM disk
E. The kernel ring buffer
16. What command parameter would you add to the end of the GRUB2 linux command to force
a Linux system to start in single-user mode?
A. single
B. fsck
C. mkinitrd
D. mkinitramfs
E. dmesg
17. What is the term commonly used for when the Linux system halts due to a system error?
A. Kernel panic
B. Kernel ring buffer
C. initrd RAM disk
D. Bootloader
E. Firmware
Review Questions 155
18. The ________ command generates the GRUB2 configuration used for booting.
A. mkinitrd
B. grub-mkconfig
C. grub-install
D. mkinitramfs
E. dmesg
19. What program allows you to fix corrupted hard drive partitions?
A. mount
B. umount
C. fsck
D. dmesg
E. mkinitrd
20. Which command allows you to append a partition to the virtual directory on a running
Linux system?
A. mount
B. umount
C. fsck
D. dmesg
E. mkinitramfs