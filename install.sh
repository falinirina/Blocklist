mkfs.fat -F32 -n BOOT /dev/sda1
mkfs.ext4 /dev/sda3
mount /dev/sda3 /mnt
mkdir -p /mnt/boot
mount /dev/sda1 /mnt/boot
curl https://raw.githubusercontent.com/falinirina/Blocklist/main/mirror.txt > /etc/pacman.d/mirrorlist
pacstrap /mnt base base-devel linux linux-firmware
genfstab -p /mnt >> /mnt/etc/fstab
