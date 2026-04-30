import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WhyPurplioSection extends StatelessWidget {
  const WhyPurplioSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 80),
      child: Column(
        children: [
          Text(
            'Mengapa Purplio Roll?',
            textAlign: TextAlign.center,
            style: GoogleFonts.epilogue(
              fontSize: 40,
              fontWeight: FontWeight.w700,
              color: const Color(0xFF341452),
              height: 1.20,
            ),
          ),
          const SizedBox(height: 16),
          Container(
            width: 96,
            height: 4,
            decoration: BoxDecoration(
              color: const Color(0xFFFCD400),
              borderRadius: BorderRadius.circular(9999),
            ),
          ),
          const SizedBox(height: 64),
          // Bento Card 1 - Bahan Organik
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(32),
            decoration: BoxDecoration(
              color: Colors.white.withValues(alpha: 0.7),
              borderRadius: BorderRadius.circular(24),
              border: Border.all(
                color: const Color(0xFFF3E8FF),
                width: 1,
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Bahan\nOrganik\nPilihan',
                  style: GoogleFonts.epilogue(
                    fontSize: 28,
                    fontWeight: FontWeight.w600,
                    color: const Color(0xFF341452),
                    height: 1.30,
                  ),
                ),
                const SizedBox(height: 16),
                Text(
                  'Kami menggunakan ubi ungu pilihan dari petani lokal yang diproses dengan standar kebersihan tertinggi untuk menjaga nutrisi dan rasa alaminya.',
                  style: GoogleFonts.plusJakartaSans(
                    fontSize: 16,
                    color: const Color(0xFF4B444F),
                    height: 1.50,
                  ),
                ),
                const SizedBox(height: 24),
                Container(
                  width: double.infinity,
                  height: 192,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: Colors.grey[300],
                  ),
                  child: const Center(
                    child: Icon(Icons.image, size: 60, color: Colors.grey),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 16),
          // Bento Card 2 - Sehat & Bergizi
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(32),
            decoration: BoxDecoration(
              color: const Color(0xFF4B2C69),
              borderRadius: BorderRadius.circular(24),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                const Icon(
                  Icons.health_and_safety,
                  color: Color(0xFFFCD400),
                  size: 40,
                ),
                const SizedBox(height: 197),
                Text(
                  'Sehat &\nBergizi',
                  style: GoogleFonts.epilogue(
                    fontSize: 28,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                    height: 1.30,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  'Kaya akan antioksidan antosianin yang baik untuk kesehatan tubuh Anda.',
                  style: GoogleFonts.plusJakartaSans(
                    fontSize: 16,
                    color: const Color(0xFFBA96DB),
                    height: 1.50,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 16),
          // Bento Card 3 - Aesthetic Experience
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(32),
            decoration: BoxDecoration(
              color: const Color(0xFFFCD400),
              borderRadius: BorderRadius.circular(24),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                const Icon(
                  Icons.auto_awesome,
                  color: Color(0xFF6E5C00),
                  size: 40,
                ),
                const SizedBox(height: 185),
                Text(
                  'Aesthetic\nExperience',
                  style: GoogleFonts.epilogue(
                    fontSize: 28,
                    fontWeight: FontWeight.w600,
                    color: const Color(0xFF6E5C00),
                    height: 1.30,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  'Tidak hanya lezat, setiap porsi didesain untuk menjadi momen yang Instagrammable.',
                  style: GoogleFonts.plusJakartaSans(
                    fontSize: 16,
                    color: const Color(0xFF6E5C00),
                    height: 1.50,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 16),
          // Bento Card 4 - Inovasi Rasa
          Container(
            width: double.infinity,
            padding: const EdgeInsets.only(
              top: 32,
              left: 26,
              right: 32,
              bottom: 32,
            ),
            decoration: BoxDecoration(
              color: Colors.white.withValues(alpha: 0.7),
              borderRadius: BorderRadius.circular(24),
              border: Border.all(
                color: const Color(0xFFF3E8FF),
                width: 1,
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: double.infinity,
                  height: 192,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: Colors.grey[300],
                  ),
                  child: const Center(
                    child: Icon(Icons.image, size: 60, color: Colors.grey),
                  ),
                ),
                const SizedBox(height: 24),
                Text(
                  'Inovasi\nRasa\nTiada\nHenti',
                  style: GoogleFonts.epilogue(
                    fontSize: 28,
                    fontWeight: FontWeight.w600,
                    color: const Color(0xFF341452),
                    height: 1.30,
                  ),
                ),
                const SizedBox(height: 16),
                Text(
                  'Dari Matcha Lava hingga Choco Crunchy, kami terus berinovasi menciptakan topping yang melengkapi kelembutan ubi ungu.',
                  style: GoogleFonts.plusJakartaSans(
                    fontSize: 16,
                    color: const Color(0xFF4B444F),
                    height: 1.50,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
