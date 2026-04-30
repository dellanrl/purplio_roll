# Purplio Roll - Mobile App

Aplikasi mobile Flutter untuk Purplio Roll, brand lumpia ubi ungu premium dengan desain modern dan aesthetic.

## 🎨 Fitur Utama

- **Mobile-First Design**: Dioptimalkan untuk pengalaman mobile yang sempurna
- **4 Halaman Utama**:
  - **Home**: Hero section, why purplio, newsletter
  - **Menu**: Katalog produk lengkap dengan harga
  - **Vision**: Cerita brand, misi, dan nilai-nilai
  - **Contact**: Informasi kontak dan form
- **Responsive Layout**: Menyesuaikan dengan berbagai ukuran layar
- **Custom Fonts**: Google Fonts (Epilogue, Space Grotesk, Plus Jakarta Sans)
- **Smooth Navigation**: Navigasi antar halaman yang mulus

## 📱 Struktur Proyek

```
lib/
├── main.dart                      # Entry point aplikasi
├── pages/                         # Halaman-halaman utama
│   ├── home_page.dart            # Halaman beranda
│   ├── menu_page.dart            # Halaman menu produk
│   ├── vision_page.dart          # Halaman visi & misi
│   └── contact_page.dart         # Halaman kontak
└── widgets/                       # Komponen reusable
    ├── app_bar_widget.dart       # Navigation bar
    ├── hero_section.dart         # Hero banner
    ├── why_purplio_section.dart  # Fitur unggulan
    ├── newsletter_section.dart   # Email signup
    └── footer_widget.dart        # Footer
```

## 🎨 Palet Warna

- **Primary Purple**: `#341452` - Warna utama brand
- **Secondary Purple**: `#581C87` - Warna sekunder
- **Accent Yellow**: `#FCD400` - Warna aksen
- **Background**: `#FCF8F9` - Warna latar
- **Text Dark**: `#4B444F` - Warna teks
- **Purple Container**: `#4B2C69` - Container gelap
- **Light Purple**: `#BA96DB` - Teks pada background gelap

## 🚀 Cara Menjalankan

### Prerequisites
- Flutter SDK (3.9.2 atau lebih baru)
- Dart SDK
- Android Studio / VS Code
- Emulator atau device fisik

### Instalasi

1. Clone repository:
```bash
git clone <repository-url>
cd purplio_roll
```

2. Install dependencies:
```bash
flutter pub get
```

3. Jalankan aplikasi:
```bash
flutter run
```

4. Build untuk production:
```bash
# Android
flutter build apk --release

# iOS
flutter build ios --release
```

## 📦 Dependencies

```yaml
dependencies:
  flutter:
    sdk: flutter
  google_fonts: ^6.2.1      # Custom typography
  url_launcher: ^6.3.1      # External links
  cupertino_icons: ^1.0.8   # iOS icons
```

## 🎯 Fitur Per Halaman

### Home Page
- Hero section dengan CTA buttons
- Badge "LIMITED EDITION FLAVORS"
- Bento grid layout untuk fitur unggulan:
  - Bahan Organik Pilihan
  - Sehat & Bergizi
  - Aesthetic Experience
  - Inovasi Rasa Tiada Henti
- Newsletter subscription
- Footer dengan navigasi

### Menu Page
- Concept section dengan deskripsi brand
- Grid produk dengan:
  - Gambar produk
  - Nama dan deskripsi
  - Harga
  - Badge "BEST SELLER"
  - Tombol "Add to Box"
- CTA section untuk order

### Vision Page
- Origin story dengan gambar
- Vision statement dengan background purple
- Mission cards (Quality, Creativity, Service)
- USP section dengan checklist
- CTA untuk shop

### Contact Page
- Hero section dengan deskripsi
- Ordering methods:
  - Visit boutique (dengan lokasi)
  - WhatsApp direct
  - Delivery apps (GrabFood, GoFood)
  - Contact details
- Contact form dengan fields:
  - Full Name
  - Email Address
  - Subject
  - Message

## 🎨 Design System

### Typography
- **Display XL**: Epilogue 48px, Bold - Headlines utama
- **Headline LG**: Epilogue 40px, Bold - Section headers
- **Headline MD**: Epilogue 28px, SemiBold - Card titles
- **Body LG**: Plus Jakarta Sans 18px - Paragraf besar
- **Body MD**: Plus Jakarta Sans 16px - Paragraf standar
- **Label Caps**: Space Grotesk 12-16px, Uppercase - Labels & buttons

### Spacing
- **xs**: 4px
- **sm**: 12px
- **base**: 8px
- **md**: 24px
- **lg**: 48px
- **xl**: 80px

### Border Radius
- **Default**: 4px
- **lg**: 8px
- **xl**: 12px
- **2xl**: 24px
- **3xl**: 40px
- **full**: 9999px (circular)

## 📱 Responsive Breakpoints

Aplikasi ini dioptimalkan untuk:
- **Mobile**: 320px - 480px (Primary focus)
- **Tablet**: 481px - 768px
- **Desktop**: 769px+ (Bonus)

## 🔧 Customization

### Mengganti Warna
Edit file `lib/main.dart`:
```dart
theme: ThemeData(
  primaryColor: const Color(0xFF341452), // Ganti warna primary
  scaffoldBackgroundColor: const Color(0xFFFCF8F9), // Ganti background
)
```

### Menambah Halaman Baru
1. Buat file baru di `lib/pages/`
2. Tambahkan route di `lib/main.dart`
3. Update navigation di `lib/widgets/app_bar_widget.dart`

### Mengganti Font
Edit `pubspec.yaml` dan update Google Fonts di setiap widget.

## 🐛 Troubleshooting

### Error: "Failed to load font"
```bash
flutter clean
flutter pub get
```

### Error: "Gradle build failed"
```bash
cd android
./gradlew clean
cd ..
flutter run
```

### Layout overflow
Pastikan semua widget dibungkus dengan `SingleChildScrollView` atau `ListView`.

## 📝 TODO / Future Enhancements

- [ ] Tambahkan animasi transisi antar halaman
- [ ] Implementasi shopping cart functionality
- [ ] Integrasi dengan backend API
- [ ] Tambahkan image caching
- [ ] Implementasi dark mode
- [ ] Tambahkan lokalisasi (multi-language)
- [ ] Integrasi payment gateway
- [ ] Push notifications untuk promo
- [ ] User authentication
- [ ] Order tracking system

## 📄 License

© 2024 PURPLIO ROLL. All rights reserved.

## 👥 Contact

Untuk pertanyaan atau dukungan:
- Email: hello@purplioroll.com
- Phone: +62 21 555 0192
- Location: Jakarta Selatan

---

**Dibuat dengan ❤️ menggunakan Flutter**
