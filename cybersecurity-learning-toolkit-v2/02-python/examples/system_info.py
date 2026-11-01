import platform
import sys

print("=== Informasi sistem lokal ===")
print("OS:", platform.system())
print("Arsitektur:", platform.machine())
print("Versi Python:", sys.version.split()[0])
