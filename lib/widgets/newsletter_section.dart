import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NewsletterSection extends StatefulWidget {
  const NewsletterSection({super.key});

  @override
  State<NewsletterSection> createState() => _NewsletterSectionState();
}

class _NewsletterSectionState extends State<NewsletterSection> {
  // Controller untuk membaca teks email yang diketik pengguna
  final TextEditingController _emailController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    super.dispose();
  }

  // Fungsi saat tombol Join ditekan
  void _subscribeNewsletter() {
    String email = _emailController.text.trim();

    if (email.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Email tidak boleh kosong!'),
          backgroundColor: Colors.red,
        ),
      );
      return;
    }

    // Validasi format email standar
    if (!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(email)) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Format email tidak valid!'),
          backgroundColor: Colors.orange,
        ),
      );
      return;
    }

    // Tampilkan snackbar sukses jika email benar
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('Terima kasih! $email berhasil terdaftar.'),
        backgroundColor: Colors.green,
      ),
    );
    _emailController.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 24, vertical: 40),
      padding: const EdgeInsets.all(48),
      decoration: BoxDecoration(
        color: const Color(0xFF341452),
        borderRadius: BorderRadius.circular(40),
      ),
      child: Stack(
        children: [
          // Background gradient effect
          Positioned.fill(
            child: Container(
              decoration: BoxDecoration(
                gradient: RadialGradient(
                  center: const Alignment(1.00, 0.00),
                  radius: 2.15,
                  colors: const [
                    Color(0x33BA96DB),
                    Color(0x00BA96DB),
                  ],
                ),
                borderRadius: BorderRadius.circular(40),
              ),
            ),
          ),
          Column(
            children: [
              Text(
                'Dapatkan Info Promo\nEksklusif',
                textAlign: TextAlign.center,
                style: GoogleFonts.epilogue(
                  fontSize: 40,
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                  height: 1.20,
                ),
              ),
              const SizedBox(height: 24),
              Text(
                '"Bergabunglah dengan komunitas pecinta ubi ungu dan dapatkan diskon 20% untuk pesanan pertama Anda!"',
                textAlign: TextAlign.center,
                style: GoogleFonts.plusJakartaSans(
                  fontSize: 16,
                  fontStyle: FontStyle.italic,
                  color: const Color(0xFFBA96DB),
                  height: 1.50,
                ),
              ),
              const SizedBox(height: 32),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      // Mengubah teks statis menjadi TextField input nyata
                      child: TextField(
                        controller: _emailController,
                        keyboardType: TextInputType.emailAddress,
                        style: GoogleFonts.plusJakartaSans(
                          fontSize: 16,
                          color: const Color(0xFF1F2937),
                        ),
                        decoration: InputDecoration(
                          hintText: 'Email Anda',
                          hintStyle: GoogleFonts.plusJakartaSans(
                            fontSize: 16,
                            color: const Color(0xFF6B7280),
                          ),
                          contentPadding: const EdgeInsets.symmetric(
                            horizontal: 24,
                            vertical: 17,
                          ),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 8),
                  // Mengaktifkan area klik tombol Join menggunakan InkWell
                  InkWell(
                    onTap: _subscribeNewsletter,
                    borderRadius: BorderRadius.circular(12),
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 32,
                        vertical: 16,
                      ),
                      decoration: BoxDecoration(
                        color: const Color(0xFFFCD400),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Text(
                        'Join',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.spaceGrotesk(
                          fontSize: 16,
                          color: const Color(0xFF221B00),
                          fontWeight: FontWeight.w400,
                          height: 1.50,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}