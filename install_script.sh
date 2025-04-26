#!/bin/bash

# Scriptin doğru çalışabilmesi için root olarak çalıştırılması gerekir.
if [ "$(id -u)" -ne 0 ]; then
  echo "Bu scripti çalıştırmak için root yetkilerine sahip olmalısınız."
  exit 1
fi

# Sistem paket listesini güncelle
echo "Paket listesi güncelleniyor..."
sudo apt update -y

# Netplan.io paketini kur
echo "Netplan.io kuruluyor..."
sudo apt install netplan.io -y

# systemd-networkd servisini yeniden başlat
echo "Systemd-networkd servisi yeniden başlatılıyor..."
sudo systemctl restart systemd-networkd

echo "İşlemler başarıyla tamamlandı."
