import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HeroSection extends StatelessWidget {
  const HeroSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 80, horizontal: 20),
      decoration: const BoxDecoration(
        color: Color(0xFFF3E5F5), // Warna Ungu Soft khas Purplio
      ),
      child: Column(
        children: [
          Text(
            "Lumer, Sehat, Nagih Banget!",
            textAlign: TextAlign.center,
            style: GoogleFonts.fredoka(
              fontSize: 50,
              fontWeight: FontWeight.bold,
              color: const Color(0xFF5D4037), // Coklat Premium
            ),
          ),
          const SizedBox(height: 20),
          const Text(
            "Inovasi Healthy Snack Ubi Ungu dengan Teknologi Air Frying.\nAlternatif camilan rendah lemak dan tinggi antioksidan!",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 18, color: Colors.black87),
          ),
        ],
      ),
    );
  }
}