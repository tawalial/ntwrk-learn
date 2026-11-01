#!/usr/bin/env bash
set -euo pipefail
sudo apt update
sudo apt install -y python3 python3-pip python3-venv python3-dev git curl wget ca-certificates build-essential nmap wireshark tcpdump dnsutils whois traceroute iproute2 net-tools jq
echo "Instalasi selesai."
python3 --version
git --version
nmap --version | head -n 2
