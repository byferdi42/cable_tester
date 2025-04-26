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
sudo apt install netplan.io -y

curl -L https://raw.githubusercontent.com/byferdi42/cable_tester/refs/heads/main/01-netcfg.yaml -o "/etc/netplan/01-netcfg.yaml"

curl -L https://raw.githubusercontent.com/byferdi42/cable_tester/refs/heads/main/test_server -o "test_server"

curl -L https://raw.githubusercontent.com/byferdi42/cable_tester/refs/heads/main/install_script_2.sh -o "install_script2.sh"

echo "İnternetli kurulum işlemleri tamamlandı."
echo "1. Cihazın internetini kesin"
echo "2. Ethernet kablosunu cihazın ethernet portlarına takın"
echo "3. Aşağıda ki komutları sırayla çalıştırın."
echo  ""
echo "chmod +x install_script2.sh"
echo "./install_script2.sh"
