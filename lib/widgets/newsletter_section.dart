import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NewsletterSection extends StatelessWidget {
  const NewsletterSection({super.key});

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
                  colors: [
                    const Color(0x33BA96DB),
                    const Color(0x00BA96DB),
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
                      padding: const EdgeInsets.symmetric(
                        horizontal: 24,
                        vertical: 17,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Text(
                        'Email Anda',
                        style: GoogleFonts.plusJakartaSans(
                          fontSize: 16,
                          color: const Color(0xFF6B7280),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 8),
                  Container(
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
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
