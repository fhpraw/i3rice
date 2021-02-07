# Arch Quick Installation Guide

## Prepare Partition

Using `cfdisk`, create partition plan based on table below:

| Partition | Size                                  | Type             |
| --------- | ------------------------------------- | ---------------- |
| /dev/sda1 | 260M                                  | EFI System       |
| /dev/sda2 | 32G (based on twice of my RAM system) | Linux Swap       |
| /dev/sda3 | rest of disk space                    | Linux filesystem |

## Formating Partition

Format EFI System partition using FAT32.

```shell
# mkfs.fat -F32 /dev/sda1
```

Make swap file

```shell
# mkswap /dev/sda2
```

Format Linux filesystem partition using ext4.

```shell
# mkfs.ext4 /dev/sda3
```

## Mount The File Systems

Mount `/dev/sda3` to `/mnt`

```shell
# mount /dev/sda3 /mnt
```

Enable swap on partition `/dev/sda2`

```shell
# swapon /dev/sda2
```

Make EFI directory

```shell
# mkdir /mnt/efi
```

Mount EFI Filesystem `/dev/sda1` to `/mnt/efi`

```shell
# mount /dev/sda1 /mnt/efi
```

## Install minimum packages

Use `pacstrap` to install base package, linux kernel and firmware, also Bootmanager (grub and efibootmgr), Network Manager (networkmanager), Text Editor(vi), and Manual Pages(man-db)

```shell
# pacstrap /mnt base linux linux-firmware grub efibootmgr networkmanager neovim man-db
```

## Generate fstab

Generate fstab file

```shell
# genfstab -U /mnt >> /mnt/etc/fstab
```

## Change root into the new system

```shell
# arch-chroot /mnt
```

## Set Time Zone

```shell
# ln -sf /usr/share/zoneinfo/Asia/Jakarta /etc/localtime
# hwclock --systohc
```

## Set Localization

Edit `/etc/locale.gen` and uncomment `en_US.UTF-8 UTF-8`

```shell
# locale-gen
```

Create `/etc/locale.conf`, set `LANG` variable

```shell
LANG=en_US.UTF-8
```

## Set Network

Create hostname file on `/etc/hostname`

```shell
# echo 'yourhostname' > /etc/hostname
```

Set hosts file on `/etc/hosts`

```shell
127.0.0.1     localhost
::1           localhost
127.0.1.1     yourhostname.localdomain yourhostname
```

Enable Network Manager service to system startup

```shell
# systemctl enable NetworkManager
```

## Set root password

```shell
# passwd
```

## Set Boot Manager

Using GRUB

```shell
# grub-install --target=x86_64-efi --efi-directory=/efi --bootloader-id=GRUB
# grub-mkconfig -o /boot/grub/grub.cfg
```

## Install sudo and add user

Install sudo

```shell
# pacman -S sudo
```

add new user

```shell
# useradd -m -g wheel mynewuser
# passwd mynewuser
```

edit `/etc/sudoers` and uncomment this:

```shell
%wheel ALL=(ALL) ALL
```

## Reboot
