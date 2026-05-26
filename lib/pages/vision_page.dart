import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../widgets/app_bar_widget.dart';
import '../widgets/footer_widget.dart';

class VisionPage extends StatelessWidget {
  const VisionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(
          83,
        ), // Sesuaikan dengan tinggi top bar-mu
        child: const AppBarWidget(currentPage: 'Vision'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 80),
            _buildOriginStory(),
            _buildVisionStatement(),
            _buildMissionSection(),
            _buildUSPSection(),
            _buildCTASection(),
            const FooterWidget(),
          ],
        ),
      ),
    );
  }

  Widget _buildOriginStory() {
    return Container(
      padding: const EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'OUR HUMBLE BEGINNINGS',
            style: GoogleFonts.spaceGrotesk(
              fontSize: 16,
              color: const Color(0xFF341452),
              fontWeight: FontWeight.w400,
              height: 1.50,
              letterSpacing: 1.60,
            ),
          ),
          const SizedBox(height: 24),
          RichText(
            text: TextSpan(
              style: GoogleFonts.epilogue(
                fontSize: 48,
                fontWeight: FontWeight.w800,
                color: const Color(0xFF341452),
                height: 1.10,
                letterSpacing: -1.44,
              ),
              children: [
                const TextSpan(text: 'Crafting\nJoy\nthrough\n'),
                TextSpan(
                  text: 'Purple\n',
                  style: GoogleFonts.epilogue(
                    fontSize: 48,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.w800,
                    color: const Color(0xFF705D00),
                  ),
                ),
                TextSpan(
                  text: 'Hues.',
                  style: GoogleFonts.epilogue(
                    fontSize: 48,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.w800,
                    color: const Color(0xFF705D00),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 24),
          Text(
            'What started as a kitchen experiment to rediscover the vibrant flavors of local sweet potatoes has blossomed into a movement. PURPLIO ROLL is not just a dessert; it is a testament to innovation and the beauty of natural ingredients.',
            style: GoogleFonts.plusJakartaSans(
              fontSize: 18,
              color: const Color(0xFF4B444F),
              height: 1.60,
            ),
          ),
          const SizedBox(height: 32),
          Row(
            children: [
              _buildBadge(Icons.local_florist, '100%\nNatural'),
              const SizedBox(width: 16),
              _buildBadge(Icons.celebration, 'Community\nFirst'),
            ],
          ),
          const SizedBox(height: 32),
          Container(
            width: double.infinity,
            height: 500,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(48),
              border: Border.all(color: Colors.white, width: 4),
              color: Colors.grey[300],
              boxShadow: [
                BoxShadow(
                  color: const Color(0x3F000000),
                  blurRadius: 50,
                  offset: const Offset(0, 25),
                  spreadRadius: -12,
                ),
              ],
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(48),
              child: Image.network(
                'https://i.imgur.com/LJBIn97.png',
                width: double.infinity,
                height: double.infinity,
                errorBuilder: (context, error, stackTrace) {
                  return Container(
                    color: Colors.grey[300],
                    child: const Center(
                      child: Icon(
                        Icons.image_not_supported,
                        size: 80,
                        color: Colors.grey,
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildBadge(IconData icon, String text) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white.withValues(alpha: 0.7),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: const Color(0xFFCDC3D0)),
        boxShadow: [
          BoxShadow(
            color: const Color(0x0C000000),
            blurRadius: 2,
            offset: const Offset(0, 1),
          ),
        ],
      ),
      child: Row(
        children: [
          Icon(icon, color: const Color(0xFF705D00), size: 24),
          const SizedBox(width: 12),
          Text(
            text,
            style: GoogleFonts.spaceGrotesk(
              fontSize: 16,
              color: const Color(0xFF1B1B1C),
              fontWeight: FontWeight.w400,
              height: 1.50,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildVisionStatement() {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 80),
      decoration: const BoxDecoration(color: Color(0xFF341452)),
      child: Column(
        children: [
          Text(
            'THE NORTH STAR',
            style: GoogleFonts.spaceGrotesk(
              fontSize: 16,
              color: const Color(0xFFFCD400),
              fontWeight: FontWeight.w400,
              height: 1.50,
            ),
          ),
          const SizedBox(height: 24),
          Text(
            '"Menjadi pelopor camilan\ninovatif berbahan lokal yang\ndisukai generasi muda."',
            textAlign: TextAlign.center,
            style: GoogleFonts.epilogue(
              fontSize: 40,
              fontWeight: FontWeight.w700,
              color: Colors.white,
              height: 1.25,
            ),
          ),
          const SizedBox(height: 24),
          Text(
            'We envision a future where tradition meets the trendsetters, bringing the best of our local heritage to the global aesthetic scene.',
            textAlign: TextAlign.center,
            style: GoogleFonts.plusJakartaSans(
              fontSize: 16,
              color: const Color(0xFFBA96DB),
              height: 1.50,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildMissionSection() {
    return Container(
      padding: const EdgeInsets.all(24),
      child: Column(
        children: [
          Text(
            'Our Daily Mission',
            style: GoogleFonts.epilogue(
              fontSize: 24,
              fontWeight: FontWeight.w400,
              color: const Color(0xFF341452),
              height: 1.50,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            'The pillars that keep us rolling every single day.',
            style: GoogleFonts.plusJakartaSans(
              fontSize: 16,
              color: const Color(0xFF4B444F),
              height: 1.50,
            ),
          ),
          const SizedBox(height: 48),
          _buildMissionCard(
            Icons.high_quality,
            'Uncompromising\nQuality',
            'We source only the finest Grade-A purple sweet potatoes, ensuring every bite is a consistent explosion of flavor and texture.',
            const Color(0xFFF0DBFF),
            const Color(0xFF341452),
          ),
          const SizedBox(height: 16),
          _buildMissionCard(
            Icons.auto_awesome,
            'Endless\nCreativity',
            'Innovation is our main ingredient. We constantly experiment with textures and flavors to surprise your palate with every seasonal launch.',
            const Color(0xFF341452),
            Colors.white,
          ),
          const SizedBox(height: 16),
          _buildMissionCard(
            Icons.volunteer_activism,
            'Sincere\nService',
            'Your satisfaction is our metric of success. We deliver happiness from our ovens to your doorstep with a smile.',
            const Color(0xFFFFE16D),
            const Color(0xFF341452),
          ),
        ],
      ),
    );
  }

  Widget _buildMissionCard(
    IconData icon,
    String title,
    String description,
    Color bgColor,
    Color textColor,
  ) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(48),
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(24),
        border: Border.all(color: const Color(0x0C341452), width: 1),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 64,
            height: 64,
            decoration: BoxDecoration(
              color: bgColor == const Color(0xFF341452)
                  ? Colors.white.withValues(alpha: 0.1)
                  : bgColor,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Icon(icon, color: textColor, size: 32),
          ),
          const SizedBox(height: 24),
          Text(
            title,
            style: GoogleFonts.epilogue(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: textColor,
              height: 1.50,
            ),
          ),
          const SizedBox(height: 12),
          Text(
            description,
            style: GoogleFonts.plusJakartaSans(
              fontSize: 16,
              color: bgColor == const Color(0xFF341452)
                  ? const Color(0xFFBA96DB)
                  : const Color(0xFF4B444F),
              height: 1.50,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildUSPSection() {
    return Container(
      padding: const EdgeInsets.all(24),
      color: const Color(0xFFF6F3F4),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          RichText(
            text: TextSpan(
              style: GoogleFonts.epilogue(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: const Color(0xFF341452),
              ),
              children: [
                const TextSpan(text: 'What Makes Us '),
                TextSpan(
                  text: 'Special?',
                  style: GoogleFonts.epilogue(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: const Color(0xFF705D00),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 48),
          _buildUSPItem(
            'Natural Purple Color',
            'The soul of Purplio comes from the earth. We use zero artificial dyes - just the stunning, natural pigments of local sweet potatoes.',
          ),
          const SizedBox(height: 48),
          _buildUSPItem(
            'Antioxidant Powerhouse',
            'Indulgence meets wellness. Our treats are naturally packed with anthocyanins, making them as good for your body as they are for your soul.',
          ),
          const SizedBox(height: 48),
          _buildUSPItem(
            'Innovative Flavors',
            'From Ube-Matcha fusion to Salted Caramel Taro, our flavor profiles are designed for the modern, adventurous foodie.',
          ),
          const SizedBox(height: 48),
          Container(
            width: double.infinity,
            height: 318,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(24),
              color: Colors.grey[300],
              boxShadow: [
                BoxShadow(
                  color: const Color(0x19000000),
                  blurRadius: 6,
                  offset: const Offset(0, 4),
                  spreadRadius: -4,
                ),
              ],
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(24),
              child: Image.network(
                'https://i.imgur.com/Dyv43h7.png',
                fit: BoxFit.cover,
                width: double.infinity,
                height: double.infinity,
                errorBuilder: (context, error, stackTrace) {
                  return Container(
                    color: Colors.grey[300],
                    child: const Center(
                      child: Icon(
                        Icons.image_not_supported,
                        size: 80,
                        color: Colors.grey,
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildUSPItem(String title, String description) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 32,
          height: 32,
          decoration: const BoxDecoration(
            color: Color(0xFF341452),
            shape: BoxShape.circle,
          ),
          child: const Icon(Icons.check, color: Colors.white, size: 16),
        ),
        const SizedBox(width: 24),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: GoogleFonts.epilogue(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: const Color(0xFF341452),
                  height: 1.50,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                description,
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
    );
  }

  Widget _buildCTASection() {
    return Container(
      margin: const EdgeInsets.all(24),
      padding: const EdgeInsets.all(80),
      decoration: BoxDecoration(
        color: const Color(0xFF4B2C69),
        borderRadius: BorderRadius.circular(48),
      ),
      child: Column(
        children: [
          Text(
            'Ready to taste the revolution?',
            textAlign: TextAlign.center,
            style: GoogleFonts.epilogue(
              fontSize: 32,
              color: const Color(0xFFBA96DB),
              height: 1.50,
            ),
          ),
          const SizedBox(height: 32),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFFFCD400),
              minimumSize: const Size(double.infinity, 64),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(24),
              ),
            ),
            child: Text(
              'Shop Best Sellers',
              style: GoogleFonts.spaceGrotesk(
                fontSize: 18,
                color: const Color(0xFF6E5C00),
                fontWeight: FontWeight.w400,
                height: 1.56,
              ),
            ),
          ),
          const SizedBox(height: 16),
          OutlinedButton(
            onPressed: () {},
            style: OutlinedButton.styleFrom(
              minimumSize: const Size(double.infinity, 64),
              side: BorderSide(
                color: Colors.white.withValues(alpha: 0.3),
                width: 2,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(24),
              ),
            ),
            child: Text(
              'Visit Our Store',
              style: GoogleFonts.spaceGrotesk(
                fontSize: 18,
                color: Colors.white,
                fontWeight: FontWeight.w400,
                height: 1.56,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
