# Installing Minimal Archlinux

## Prepare Partition

Using `cfdisk`, create partition plan based on table below:

| Partition | Size                          | Type                    | Mount |
| --------- | ----------------------------- | ----------------------- | ----- |
| /dev/sda1 | 300M                          | EFI System              | /efi  |
| /dev/sda2 | rest of disk space            | Linux filesystem (root) | /     |

## Formating Partition

Format `sda1` EFI System partition to FAT32, `sda2` as ext4

```shell
mkfs.fat -F32 /dev/sda1
mkfs.ext4 /dev/sda2
```

## Mount The File Systems

```shell
mount /dev/sda2 /mnt
mkdir /mnt/efi
mount /dev/sda1 /mnt/efi
```

## Install minimum packages

```shell
pacstrap /mnt base linux linux-firmware
```

## Generate fstab

Generate fstab file

```shell
genfstab -U /mnt >> /mnt/etc/fstab
```

## Change root into the new system

```shell
arch-chroot /mnt
```

## Set Time Zone

```shell
ln -sf /usr/share/zoneinfo/[Region]/[City] /etc/localtime
hwclock --systohc
```

## Set Localization

Edit `/etc/locale.gen` and uncomment `en_US.UTF-8 UTF-8` and generate

```shell
locale-gen
```

Edit `/etc/locale.conf`, add `LANG=en_US.UTF-8`

```shell
echo 'LANG=en_US.UTF-8' > /etc/locale.conf
```

## Set Network

Install Network Manager

```shell
pacman -S networkmanager
```

Enable Network Manager at startup

```shell
systemctl enable NetworkManager
```

Edit `/etc/hostname`

```shell
echo 'yourhostname' > /etc/hostname
```

Edit `/etc/hosts`

```text
127.0.0.1     localhost
::1           localhost
127.0.1.1     yourhostname.localdomain yourhostname
```

## Set root password

```shell
passwd
```

## Set Boot Manager

Install GRUB with EFI support

```shell
pacman -S grub efibootmgr
```

Configure GRUB

```shell
grub-install --target=x86_64-efi --efi-directory=/efi --bootloader-id=GRUB
grub-mkconfig -o /boot/grub/grub.cfg
```

## add user and configure sudo

add new user set to wheel group

```shell
useradd -m -g wheel youruser
passwd youruser
```

Install `sudo`

```shell
pacman -S sudo
```

edit `/etc/sudoers` and uncomment this line to allow wheel group execute as root:

```text
%wheel ALL=(ALL) ALL
```

## Reboot

Back to installer root and Reboot

```shell
exit
reboot
```
