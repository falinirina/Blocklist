pacman-key --init
pacman-key --populate archlinux
pacman -S neovim man-db man-pages texinfo elinks nano
ln -sf /usr/share/zoneinfo/Indian/Antananarivo /etc/localtime
hwclock --systohc
echo "landry" > /etc/hostname
echo "# IPv4 Hosts
127.0.0.1	localhost myhostname

# Machine FQDN
127.0.1.1	myhostname.localdomain	myhostname

# IPv6 Hosts
::1		localhost	ip6-localhost	ip6-loopback
ff02::1 	ip6-allnodes
ff02::2 	ip6-allrouters" > /etc/hosts
mkinitcpio -p linux
bootctl --path=/boot install
