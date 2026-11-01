#!/usr/bin/env bash
# Memasang lingkungan belajar dasar di Ubuntu. Tidak menjalankan scan.
set -euo pipefail

echo "=== Cybersecurity Learning Toolkit: Ubuntu setup ==="
sudo apt update
sudo apt install -y \
  python3 python3-pip python3-venv python3-dev \
  git curl wget ca-certificates build-essential \
  nmap wireshark tcpdump \
  dnsutils whois traceroute iproute2 net-tools jq

echo
echo "Instalasi paket selesai."
python3 --version
git --version
nmap --version | head -n 2
echo
echo "Wireshark dapat dibuka dengan: wireshark"
echo "Ikuti kebijakan izin capture pada perangkat Anda."
