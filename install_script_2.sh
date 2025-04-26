# systemd-networkd servisini yeniden başlat
echo "Systemd-networkd servisi yeniden başlatılıyor..."
sudo systemctl restart systemd-networkd

sudo netplan apply

chmod +x test_server

./test_server
