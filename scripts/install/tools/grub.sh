#!/bin/bash

if grub-mkconfig -V
then
    # Install os-prober for Windows detection
    sudo pacman -S --needed --noconfirm os-prober

    # Install ntfs support
    sudo pacman -S --needed --noconfirm ntfs-3g

    # Uncomment GRUB_DISABLE_OS_PROBER=false and GRUB_SAVEDEFAULT=true in /etc/default/grub
    sudo sed -i.bak 's/#GRUB_DISABLE_OS_PROBER=false/GRUB_DISABLE_OS_PROBER=false/g; s/#GRUB_SAVEDEFAULT=true/GRUB_SAVEDEFAULT=true/g;' /etc/default/grub

    # Re-creating the grub boot config and detecting other boot entries ... can take a while
    sudo grub-mkconfig -o /boot/grub/grub.cfg
fi
