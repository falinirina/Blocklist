pacman -S wpa_supplicant
echo "[Match]
Name=enp4s0

[Network]
DHCP=yes

[DHCP]
RouteMetric=10" > /etc/systemd/network/20-wired.network

echo "[Match]
Name=wlan0

[Network]
DHCP=yes

[DHCP]
RouteMetric=20" > /etc/systemd/network/25-wireless.network
systemctl enable systemd-networkd.service
