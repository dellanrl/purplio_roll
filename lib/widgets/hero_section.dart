import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HeroSection extends StatefulWidget {
  const HeroSection({super.key});

  @override
  State<HeroSection> createState() => _HeroSectionState();
}

class _HeroSectionState extends State<HeroSection> with SingleTickerProviderStateMixin {
  late final AnimationController _floatingController;
  bool _isBtn1Hovered = false;
  bool _isBtn2Hovered = false;

  @override
  void initState() {
    super.initState();
    // Animasi kartu Best Seller bergerak naik-turun perlahan agar interaktif
    _floatingController = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    )..repeat(reverse: true);
  }

  @override
  void dispose() {
    _floatingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      // Mengubah warna background menjadi lebih clean & fresh
      decoration: const BoxDecoration(color: Color(0xFFFCF8F9)),
      child: Stack(
        children: [
          // Lingkaran dekoratif latar belakang (Ukurannya diperkecil agar tidak makan tempat)
          Positioned(
            top: -50,
            right: -50,
            child: Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                // ignore: deprecated_member_use
                color: const Color(0xFFF0DBFF).withOpacity(0.4),
                shape: BoxShape.circle,
              ),
            ),
          ),
          
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // 1. Badge Terkini (Dibuat lebih minimalis)
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                  decoration: BoxDecoration(
                    color: const Color(0xFFE8DFF2),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Text(
                    'LIMITED EDITION FLAVORS',
                    style: GoogleFonts.spaceGrotesk(
                      fontSize: 10,
                      color: const Color(0xFF4A4453),
                      fontWeight: FontWeight.w600,
                      letterSpacing: 0.5,
                    ),
                  ),
                ),
                const SizedBox(height: 16), // Jarak disempitkan agar padat

                // 2. Headline Judul Utama
                RichText(
                  text: TextSpan(
                    style: GoogleFonts.epilogue(
                      fontSize: 38, // Dioptimalkan agar pas di layar mobile
                      fontWeight: FontWeight.w800,
                      color: const Color(0xFF341452),
                      height: 1.2,
                      letterSpacing: -1.0,
                    ),
                    children: const [
                      TextSpan(text: 'Revolusi Rasa\ndalam '),
                      TextSpan(
                        text: 'Gulungan Ungu',
                        style: TextStyle(color: Color(0xFF4B2C69)),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 12),

                // 3. Deskripsi Singkat
                Text(
                  'Nikmati sensasi krispi lumpia ubi ungu premium yang dibuat dengan cinta. Perpaduan sempurna antara tekstur renyah dan kelembutan manis ubi ungu organik.',
                  style: GoogleFonts.plusJakartaSans(
                    fontSize: 15,
                    color: const Color(0xFF5C5461),
                    height: 1.5,
                  ),
                ),
                const SizedBox(height: 24),

                // 4. Tombol Berdampingan (Row) - Menghemat Space Vertikal Secara Drastis
                Row(
                  children: [
                    Expanded(
                      child: MouseRegion(
                        onEnter: (_) => setState(() => _isBtn1Hovered = true),
                        onExit: (_) => setState(() => _isBtn1Hovered = false),
                        child: AnimatedScale(
                          scale: _isBtn1Hovered ? 1.03 : 1.0,
                          duration: const Duration(milliseconds: 150),
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.pushNamed(context, '/menu');
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xFFFCD400),
                              padding: const EdgeInsets.symmetric(vertical: 18),
                              elevation: 4,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(16),
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Menu',
                                  style: GoogleFonts.spaceGrotesk(
                                    fontSize: 16,
                                    color: const Color(0xFF221B00),
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                const SizedBox(width: 6),
                                const Icon(Icons.arrow_forward_rounded, color: Color(0xFF221B00), size: 18),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: MouseRegion(
                        onEnter: (_) => setState(() => _isBtn2Hovered = true),
                        onExit: (_) => setState(() => _isBtn2Hovered = false),
                        child: AnimatedScale(
                          scale: _isBtn2Hovered ? 1.03 : 1.0,
                          duration: const Duration(milliseconds: 150),
                          child: OutlinedButton(
                            onPressed: () {
                              Navigator.pushNamed(context, '/menu');
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(content: Text('Menampilkan Promo Spesial Hari Ini!')),
                              );
                            },
                            style: OutlinedButton.styleFrom(
                              padding: const EdgeInsets.symmetric(vertical: 18),
                              side: const BorderSide(color: Color(0xFF341452), width: 1.5),
                              backgroundColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(16),
                              ),
                            ),
                            child: Text(
                              'Cek Promo',
                              style: GoogleFonts.spaceGrotesk(
                                fontSize: 16,
                                color: const Color(0xFF341452),
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 32),

                // 5. Kotak Foto Utama (Ukurannya disesuaikan agar proporsional dan tidak kosong)
                Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Container(
                      width: double.infinity,
                      height: 340, // Diperkecil dari 600 agar tampilan padat dan pas satu layar HP
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(24),
                        boxShadow: [
                          BoxShadow(
                            // ignore: deprecated_member_use
                            color: const Color(0xFF341452).withOpacity(0.12),
                            blurRadius: 30,
                            offset: const Offset(0, 15),
                          ),
                        ],
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(24),
                        child: Image.network(
                          'https://i.postimg.cc/9M3XbX7W/AGZkpHO.png',
                          fit: BoxFit.cover,
                          errorBuilder: (context, error, stackTrace) {
                            return Container(
                              color: Color(0xFFE8DFF2),
                              child: Center(child: Icon(Icons.broken_image, size: 40, color: Colors.grey)),
                            );
                          },
                        ),
                      ),
                    ),
                    
                    // Badge Informasi Mengambang Interaktif
                    AnimatedBuilder(
                      animation: _floatingController,
                      builder: (context, child) {
                        return Positioned(
                          right: 16,
                          bottom: -16 + (_floatingController.value * 8), // Bergerak halus
                          child: child!,
                        );
                      },
                      child: Container(
                        constraints: const BoxConstraints(maxWidth: 180),
                        padding: const EdgeInsets.all(14),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(16),
                          boxShadow: [
                            BoxShadow(
                              // ignore: deprecated_member_use
                              color: Colors.black.withOpacity(0.08),
                              blurRadius: 10,
                              offset: const Offset(0, 4),
                            ),
                          ],
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const Icon(Icons.star_rounded, color: Color(0xFFFCD400), size: 20),
                            const SizedBox(width: 6),
                            Text(
                              'Best Seller #1',
                              style: GoogleFonts.plusJakartaSans(
                                fontSize: 13,
                                fontWeight: FontWeight.w800,
                                color: const Color(0xFF341452),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
              ],
            ),
          ),
        ],
      ),
    );
  }
}