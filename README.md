## README

# Clone Aplikasi Gojek menggunakan Flutter

Selamat datang di proyek clone aplikasi Gojek menggunakan Flutter! Proyek ini dibangun dengan arsitektur MVC dan menggunakan state management BLoC. Dengan menggunakan library Flutter terbaru, kami menciptakan aplikasi yang interaktif, responsif, dan mudah untuk di-maintain.

## Fitur Utama

- **Navigasi yang intuitif** dengan menggunakan `BottomNavigationBar` untuk mengakses berbagai layanan dengan mudah seperti layanan transportasi, pengantaran makanan, belanja, dan lainnya.
- **Promo menarik dengan Carousel** - Tampilkan promo terbaru secara menarik dengan menggunakan `carousel_slider` dan `dots_indicator`, memastikan pengalaman pengguna yang menarik dan interaktif.
- **Loading yang menarik dengan Shimmer** - Meningkatkan pengalaman pengguna saat data dimuat dengan efek `shimmer`, memberikan indikasi visual bahwa aplikasi sedang memuat informasi.

## Struktur Proyek

Proyek ini menggunakan arsitektur Model-View-Controller (MVC) yang memisahkan logika bisnis, tampilan, dan data. Pengelolaan state menggunakan BLoC memastikan alur data yang bersih dan terorganisir.

```
lib/
|-- blocs/            # Manajemen state dengan BLoC
|-- controllers/      # Logika bisnis dan interaksi dengan model
|-- models/           # Definisi data dan struktur
|-- views/            # UI dan tampilan aplikasi
|-- main.dart         # Entry point aplikasi
```

## Persyaratan

Pastikan Anda memiliki Flutter SDK dan Dart SDK yang terbaru diinstal di sistem Anda sebelum menjalankan aplikasi ini.

## Instalasi

1. **Clone repository ini:**

   ```sh
   git clone https://github.com/mrmuhammadrifki/gojek-clone.git
   cd gojek-clone-flutter
   ```

2. **Instal dependencies:**

   ```sh
   flutter pub get
   ```

3. **Jalankan aplikasi:**
   ```sh
   flutter run
   ```

Pastikan Anda terhubung dengan perangkat atau emulator yang telah dikonfigurasi dengan Flutter.

## Library yang Digunakan

Proyek ini menggunakan berbagai library Flutter untuk meningkatkan pengalaman pengguna dan efisiensi pengembangan:

- `cupertino_icons`
- `google_fonts`
- `auto_size_text`
- `bloc`
- `flutter_bloc`
- `carousel_slider`
- `dots_indicator`
- `shimmer`

## Kontribusi

Kami mengundang kontribusi dari komunitas untuk memperbaiki bug, menambahkan fitur baru, atau meningkatkan dokumentasi. Untuk berkontribusi, silakan ikuti langkah-langkah berikut:

1. **Fork repository ini**
2. **Buat branch baru:** `git checkout -b fitur-baru`
3. **Commit perubahan Anda:** `git commit -am 'Menambahkan fitur baru'`
4. **Push ke branch Anda:** `git push origin fitur-baru`
5. **Kirim pull request**

## Lisensi

Proyek ini dilisensikan di bawah MIT License - lihat [LICENSE](./LICENSE) untuk informasi lebih lanjut.

## Hubungi Kami

Jika Anda memiliki pertanyaan atau saran, jangan ragu untuk menghubungi kami di [+6285751748482](https://wa.me/6285751748482).

Terima kasih telah menggunakan dan berkontribusi pada proyek ini!

---

Dibuat dengan ❤ oleh [Muhammad Rifki]
