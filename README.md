## Daftar Program

### 1. `sloane_oeis.dart`
Program untuk menghitung deret Lazy Caterer's sequence (OEIS A000124). Program akan meminta input berupa angka n, lalu menghitung deret dari 0 sampai n menggunakan rumus (n² + n + 2)/2.

### 2. `dense_rank.dart`
Program untuk menentukan ranking berdasarkan skor. Program akan meminta input jumlah skor yang akan diranking, lalu mengurutkan skor dari tertinggi ke terendah. Skor yang sama akan mendapat ranking yang sama (dense ranking).

### 3. `balance_brackets.dart`
Program untuk memeriksa keseimbangan tanda kurung dalam string. Program menggunakan stack untuk menyimpan tanda kurung buka dan mencocokkan dengan tanda kurung tutup yang sesuai. Mendukung tanda kurung (), [], dan {}.

### Kompleksitas Program `balance_brackets.dart`

#### Kompleksitas Waktu: O (n)
- Melakukan 1 kali iterasi untuk membaca karakter pada input
- Setiap karakter hanya diproses sekali (proses dimasukkan ke stack / dicompare) -> kompleksitas linear O(n)

#### Kompleksitas Ruang: O(n)
- Stack digunakan untuk menyimpan tanda kurung buka
- Worst case dimana semua karakter = tanda kurung buka, stack akan menyimpan hingga O(n) elemen
- Map untuk pencocokan tanda kurung memiliki ukuran tetap O(1)
- Total kompleksitas ruang adalah linear terhadap panjang input -> O(n) (karena bisa ada n/2 elemen dalam stack saat worst case)


## Troubleshooting

### Error "Unknown evaluation response type: null" (VS Code)
Error ini muncul karena program membutuhkan input dari user melalui terminal, sedangkan Debug Console tidak mendukung input interaktif.

Jika muncul error "Unknown evaluation response type: null" saat menjalankan program, ikuti langkah berikut:

1. Buka Pengaturan VS Code
2. Search "Dart: CLI Console"
3. Pilih "Terminal" atau "External Terminal" sebagai default console
4. Run program


