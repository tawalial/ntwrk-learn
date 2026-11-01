# Cybersecurity Learning Toolkit

Repository belajar pribadi untuk fondasi Linux, Windows Terminal, Python, networking, dan keamanan web.

**Fokus:** belajar bertahap menuju bidang jaringan dan penetration testing secara etis. Semua latihan teknis diarahkan ke perangkat sendiri atau lab yang secara eksplisit mengizinkan pengujian.

## Isi repository

```text
cybersecurity-learning-toolkit/
├── README.md
├── LICENSE
├── .gitignore
├── 01-installation/
│   ├── ubuntu/install.sh
│   ├── windows/install.ps1
│   └── requirements.txt
├── 02-python/
│   ├── README.md
│   └── examples/
│       ├── system_info.py
│       └── file_hash.py
├── 03-networking/
│   ├── README.md
│   └── commands.md
├── 04-tools/
│   └── README.md
├── 05-web-security/
│   └── README.md
├── 06-lab-practice/
│   └── README.md
└── docs/
    └── learning-roadmap.md
```

## Mulai cepat

### Ubuntu
```bash
cd 01-installation/ubuntu
chmod +x install.sh
./install.sh
```

### Windows PowerShell
Buka PowerShell (Administrator untuk instalasi aplikasi), masuk ke folder `01-installation/windows`, lalu:
```powershell
Set-ExecutionPolicy -Scope Process Bypass
.\install.ps1
```

### Siapkan Python
Setelah tools dasar terpasang, dari root repository:

Ubuntu:
```bash
python3 -m venv .venv
source .venv/bin/activate
python -m pip install --upgrade pip
python -m pip install -r 01-installation/requirements.txt
```

Windows:
```powershell
py -m venv .venv
.\.venv\Scripts\Activate.ps1
python -m pip install --upgrade pip
python -m pip install -r 01-installation/requirements.txt
```

## Prinsip penggunaan

- Hanya uji perangkat, akun, jaringan, dan aplikasi milik sendiri atau yang memiliki izin jelas.
- Jangan memindai jaringan kampus, kantor, Wi-Fi publik, atau alamat IP orang lain tanpa izin tertulis.
- Jangan mengunggah password, token, private key, data pribadi, atau file konfigurasi rahasia ke GitHub.
- Installer hanya memasang paket. Installer tidak menjalankan pemindaian atau eksploitasi.
- Periksa isi script sebelum menjalankannya.

## Rencana belajar

Lihat [`docs/learning-roadmap.md`](docs/learning-roadmap.md).
