"""Menampilkan informasi dasar sistem lokal; tidak mengakses jaringan."""
import platform
import sys

print("=== Informasi sistem ===")
print("OS            :", platform.system())
print("Versi OS      :", platform.version())
print("Arsitektur    :", platform.machine())
print("Python        :", sys.version.split()[0])
