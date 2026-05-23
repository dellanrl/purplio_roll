import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HeroSection extends StatelessWidget {
  const HeroSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      constraints: const BoxConstraints(minHeight: 795),
      decoration: const BoxDecoration(color: Color(0xFFFCF8F9)),
      child: Stack(
        children: [
          // Background decorative elements
          Positioned(
            top: -96,
            right: -96,
            child: Container(
              width: 384,
              height: 384,
              decoration: BoxDecoration(
                color: const Color(0xFFF0DBFF).withOpacity(0.3),
                shape: BoxShape.circle,
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: MediaQuery.of(context).size.width * 0.25,
            child: Container(
              width: 256,
              height: 256,
              decoration: BoxDecoration(
                color: const Color(0xFFE9C400).withOpacity(0.2),
                shape: BoxShape.circle,
              ),
            ),
          ),
          // Content
          Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 40),
                // Badge
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 6,
                  ),
                  decoration: BoxDecoration(
                    color: const Color(0xFFE8DFF2),
                    borderRadius: BorderRadius.circular(24),
                  ),
                  child: Text(
                    'LIMITED EDITION FLAVORS',
                    style: GoogleFonts.spaceGrotesk(
                      fontSize: 12,
                      color: const Color(0xFF4A4453),
                      fontWeight: FontWeight.w400,
                      height: 1.5,
                    ),
                  ),
                ),
                const SizedBox(height: 24),
                // Headline
                RichText(
                  text: TextSpan(
                    style: GoogleFonts.epilogue(
                      fontSize: 48,
                      fontWeight: FontWeight.w800,
                      color: const Color(0xFF341452),
                      height: 1.25,
                      letterSpacing: -1.44,
                    ),
                    children: [
                      const TextSpan(text: 'Revolusi Rasa\ndalam '),
                      TextSpan(
                        text: 'Gulungan\n',
                        style: GoogleFonts.epilogue(
                          fontSize: 48,
                          fontWeight: FontWeight.w800,
                          color: const Color(0xFF341452),
                        ),
                      ),
                      TextSpan(
                        text: 'Ungu',
                        style: GoogleFonts.epilogue(
                          fontSize: 48,
                          fontWeight: FontWeight.w800,
                          color: const Color(0xFF341452),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 24),
                // Description
                Text(
                  'Nikmati sensasi krispi lumpia ubi ungu premium yang dibuat dengan cinta. Perpaduan sempurna antara tekstur renyah dan kelembutan manis ubi ungu organik yang autentik.',
                  style: GoogleFonts.plusJakartaSans(
                    fontSize: 18,
                    color: const Color(0xFF4B444F),
                    height: 1.6,
                  ),
                ),
                const SizedBox(height: 32),
                // CTA Buttons
                Column(
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/menu');
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFFFCD400),
                        minimumSize: const Size(double.infinity, 64),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        elevation: 10,
                        shadowColor: const Color(0xFF705D00).withOpacity(0.1),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Lihat Menu Kami',
                            style: GoogleFonts.spaceGrotesk(
                              fontSize: 18,
                              color: const Color(0xFF6E5C00),
                              fontWeight: FontWeight.w400,
                              height: 1.56,
                            ),
                          ),
                          const SizedBox(width: 8),
                          const Icon(
                            Icons.arrow_forward,
                            color: Color(0xFF6E5C00),
                            size: 20,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 16),
                    OutlinedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/menu');
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text('Menampilkan Promo Spesial Hari Ini!')),
                        );
                      },
                      style: OutlinedButton.styleFrom(
                        minimumSize: const Size(double.infinity, 64),
                        side: const BorderSide(
                          color: Color(0xFFCDC3D0),
                          width: 1,
                        ),
                        backgroundColor: Colors.white.withOpacity(0.7),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      child: Text(
                        'Cek Promo Hari Ini',
                        style: GoogleFonts.spaceGrotesk(
                          fontSize: 18,
                          color: const Color(0xFF341452),
                          fontWeight: FontWeight.w400,
                          height: 1.56,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 48),
                // Hero Image
                Stack(
                  children: [
                    Container(
                      width: double.infinity,
                      height: 600,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(24),
                        border: Border.all(color: Colors.white, width: 8),
                        boxShadow: const [
                          BoxShadow(
                            color: Color(0x4C341452),
                            blurRadius: 50,
                            offset: Offset(0, 25),
                            spreadRadius: -12,
                          ),
                        ],
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(16),
                        child: Image.network(
                          // MENGGUNAKAN SERVER POSTIMAGES (TIDAK TERBLOKIR DI INDONESIA)
                          'https://i.postimg.cc/9M3XbX7W/AGZkpHO.png',
                          fit: BoxFit.cover,
                          errorBuilder: (context, error, stackTrace) {
                            return const Center(
                              child: Icon(Icons.broken_image, size: 50, color: Colors.grey),
                            );
                          },
                        ),
                      ),
                    ),
                    Positioned(
                      left: -24,
                      bottom: 110,
                      child: Container(
                        constraints: const BoxConstraints(maxWidth: 200),
                        padding: const EdgeInsets.all(24),
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.7),
                          borderRadius: BorderRadius.circular(16),
                          border: Border.all(
                            color: Colors.white.withOpacity(0.5),
                            width: 1,
                          ),
                          boxShadow: const [
                            BoxShadow(
                              color: Color(0x19000000),
                              blurRadius: 10,
                              offset: Offset(0, 8),
                              spreadRadius: -6,
                        ),
                        BoxShadow(
                          color: Color(0x19000000),
                          blurRadius: 25,
                          offset: Offset(0, 20),
                          spreadRadius: -5,
                        ),
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            const Icon(
                              Icons.star,
                              color: Color(0xFF705D00),
                              size: 20,
                            ),
                            const SizedBox(width: 8),
                            Text(
                              'Best Seller',
                              style: GoogleFonts.plusJakartaSans(
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                                color: const Color(0xFF341452),
                                height: 1.5,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 12),
                        Text(
                          'Original Purplio Roll dengan saus karamel premium.',
                          style: GoogleFonts.plusJakartaSans(
                            fontSize: 14,
                            color: const Color(0xFF4B444F),
                            height: 1.63,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 40),
              ],
            ),
          ),
        ],
      ),
    );
  }
}