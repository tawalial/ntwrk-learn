"""Menghitung SHA-256 file lokal untuk pemeriksaan integritas."""
import hashlib
import sys
from pathlib import Path

if len(sys.argv) != 2:
    print("Cara pakai: python file_hash.py <path-file>")
    raise SystemExit(1)

path = Path(sys.argv[1])
if not path.is_file():
    print("File tidak ditemukan.")
    raise SystemExit(1)

digest = hashlib.sha256()
with path.open("rb") as file:
    for chunk in iter(lambda: file.read(1024 * 1024), b""):
        digest.update(chunk)

print("File  :", path)
print("SHA256:", digest.hexdigest())
