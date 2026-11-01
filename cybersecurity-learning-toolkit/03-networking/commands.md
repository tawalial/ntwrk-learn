# Perintah networking yang aman untuk pengenalan

Perintah berikut memeriksa konfigurasi lokal atau loopback komputer sendiri.

## Ubuntu
```bash
ip addr
ip route
ss -tuln
ping -c 4 127.0.0.1
```

## Windows PowerShell
```powershell
ipconfig
route print
Get-NetTCPConnection -State Listen
ping 127.0.0.1
```

## Nmap pada loopback saja
```bash
nmap 127.0.0.1
```

Nmap digunakan di sini hanya untuk mengenali layanan pada komputer sendiri. Jangan mengganti alamat tersebut dengan alamat perangkat/jaringan lain kecuali kamu memiliki izin eksplisit untuk mengujinya.
