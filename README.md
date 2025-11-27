# Perbandingan Struktur Kondisional: Python vs Shell Script

Repository ini menjelaskan perbedaan sintaks dan penggunaan struktur kondisional (if-else) antara Python dan Shell scripting (Bash).

## Daftar Isi
- [Pendahuluan](#pendahuluan)
- [Python: if-elif-else](#python-if-elif-else)
- [Shell: if-then-fi](#shell-if-then-fi)
- [Perbedaan Utama](#perbedaan-utama)
- [Contoh Kode](#contoh-kode)

## Pendahuluan

Meskipun logika kondisional pada dasarnya sama di berbagai bahasa pemrograman, setiap bahasa memiliki cara penulisan (sintaks) yang berbeda. Python dan Shell scripting memiliki perbedaan yang cukup signifikan dalam hal ini.

## Python: if-elif-else

Python menggunakan sintaks yang sederhana dan berbasis indentasi:

```python
if kondisi:
    print("ini true")
elif kondisi_lain:
    print("ini kondisi kedua")
else:
    print("ini false")
```

### Karakteristik Python:
- **Tidak ada keyword penutup**: Python tidak memerlukan kata kunci khusus untuk menutup blok if
- **Indentasi wajib**: Menggunakan indentasi (spasi/tab) untuk menandai blok kode
- **Titik dua (`:`)**: Setiap kondisi diakhiri dengan titik dua
- **elif**: Menggunakan `elif` untuk kondisi tambahan (singkatan dari "else if")

## Shell: if-then-fi

Shell scripting menggunakan sintaks yang lebih verbose dengan keyword penutup:

```bash
if [ kondisi ]; then
    echo "ini true"
elif [ kondisi_lain ]; then
    echo "ini kondisi kedua"
else
    echo "ini false"
fi
```

### Karakteristik Shell:
- **Keyword `fi`**: Menggunakan `fi` (if terbalik) untuk menutup blok if
- **Keyword `then`**: Memerlukan `then` setelah kondisi
- **Tanda kurung siku `[ ]`**: Kondisi ditulis dalam tanda kurung siku
- **Semicolon (`;`)**: Menggunakan `;` untuk memisahkan kondisi dan `then` dalam satu baris
- **elif**: Sama seperti Python, menggunakan `elif` untuk kondisi tambahan

## Perbedaan Utama

| Aspek | Python | Shell Script |
|-------|--------|--------------|
| **Penutup blok** | Tidak ada (berbasis indentasi) | `fi` (if terbalik) |
| **Penanda blok** | Indentasi + `:` | `then` keyword |
| **Kondisi** | Langsung setelah if | Dalam `[ ]` atau `[[ ]]` |
| **Sintaks** | Lebih ringkas | Lebih eksplisit |
| **Filosofi** | Readability first | Unix tradition |

## Contoh Kode

### Contoh Python

```python
# Contoh sederhana
umur = 20

if umur < 18:
    print("Anda masih di bawah umur")
elif umur >= 18 and umur < 60:
    print("Anda dewasa")
else:
    print("Anda senior")
```

### Contoh Shell Script

```bash
#!/bin/bash

# Contoh sederhana
umur=20

if [ $umur -lt 18 ]; then
    echo "Anda masih di bawah umur"
elif [ $umur -ge 18 ] && [ $umur -lt 60 ]; then
    echo "Anda dewasa"
else
    echo "Anda senior"
fi
```

### Perbandingan Operator

**Python:**
- `<`, `>`, `<=`, `>=`, `==`, `!=`
- `and`, `or`, `not`

**Shell:**
- `-lt` (less than), `-gt` (greater than), `-le`, `-ge`, `-eq`, `-ne`
- `&&` (and), `||` (or), `!` (not)
- Untuk string: `=`, `!=`, `-z`, `-n`

## Mengapa Perbedaan Ini Ada?

### Python
Python dirancang dengan filosofi "readability counts". Penggunaan indentasi memaksa programmer menulis kode yang rapi dan mudah dibaca.

### Shell
Shell scripting berasal dari tradisi Unix yang lebih tua. Penggunaan `fi`, `then`, dan keyword eksplisit lainnya memudahkan parsing untuk shell interpreter dan menjaga kompatibilitas dengan sistem lama.

## Kesimpulan

Kedua pendekatan memiliki kelebihan masing-masing:
- **Python** lebih ringkas dan mudah dibaca untuk programmer modern
- **Shell** lebih eksplisit dan cocok untuk scripting sistem dan automation

Memahami perbedaan ini penting ketika bekerja dengan berbagai bahasa pemrograman dan scripting.

## Lisensi

MIT License

## Kontributor

Kontribusi selalu diterima! Silakan buat pull request atau issue jika ada saran perbaikan.
