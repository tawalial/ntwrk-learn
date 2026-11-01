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

sha256 = hashlib.sha256()
with path.open("rb") as f:
    for chunk in iter(lambda: f.read(1024 * 1024), b""):
        sha256.update(chunk)

print("File:", path)
print("SHA-256:", sha256.hexdigest())
