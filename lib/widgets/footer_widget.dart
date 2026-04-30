import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FooterWidget extends StatelessWidget {
  const FooterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 48),
      decoration: const BoxDecoration(
        color: Color(0xFF581C87),
        border: Border(
          top: BorderSide(
            color: Color(0xFF6B21A8),
            width: 1,
          ),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'PURPLIO ROLL',
            style: GoogleFonts.spaceGrotesk(
              fontSize: 20,
              fontWeight: FontWeight.w900,
              color: const Color(0xFFFACC15),
              height: 1.40,
            ),
          ),
          const SizedBox(height: 16),
          Text(
            '© 2024 PURPLIO ROLL. STAY\nSWEET.',
            style: GoogleFonts.spaceGrotesk(
              fontSize: 14,
              color: const Color(0xCCE9D5FF),
              height: 1.43,
              letterSpacing: 0.35,
            ),
          ),
          const SizedBox(height: 32),
          Wrap(
            spacing: 32,
            runSpacing: 16,
            children: [
              _buildFooterLink('MENU', false),
              _buildFooterLink('VISION', false),
              _buildFooterLink('CONTACT', false),
              _buildFooterLink('LOCATIONS', false),
            ],
          ),
          const SizedBox(height: 32),
          Row(
            children: [
              _buildSocialIcon(Icons.share),
              const SizedBox(width: 16),
              _buildSocialIcon(Icons.location_on),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildFooterLink(String text, bool isActive) {
    return Text(
      text,
      style: GoogleFonts.spaceGrotesk(
        fontSize: 14,
        color: isActive
            ? const Color(0xFFFACC15)
            : const Color(0xCCE9D5FF),
        fontWeight: FontWeight.w400,
        height: 1.43,
        letterSpacing: 0.35,
      ),
    );
  }

  Widget _buildSocialIcon(IconData icon) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.white.withValues(alpha: 0.1),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Icon(
        icon,
        color: const Color(0xFFBA96DB),
        size: 20,
      ),
    );
  }
}
