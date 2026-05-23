import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
import '../widgets/app_bar_widget.dart';
import '../widgets/footer_widget.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({super.key});

  // Fungsi otomatis mengirim pesan pesanan spesifik menu ke WhatsApp
  Future<void> _orderMenuViaWhatsApp(String menuName) async {
    final String message = "Halo Purplio Roll, saya ingin memesan menu: $menuName";
    final Uri url = Uri.parse("https://wa.me/6285718727758?text=${Uri.encodeComponent(message)}");
    if (!await launchUrl(url, mode: LaunchMode.externalApplication)) {
      throw Exception('Tidak dapat membuka WhatsApp');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(80),
        child: const AppBarWidget(currentPage: 'Menu'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 80),
            _buildConceptSection(),
            _buildMenuSection(),
            _buildCTASection(context), // Mengirim context untuk navigasi
            const FooterWidget(),
          ],
        ),
      ),
    );
  }

  Widget _buildConceptSection() {
    return Container(
      padding: const EdgeInsets.all(24),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
            decoration: BoxDecoration(
              color: const Color(0xFFF0DBFF),
              borderRadius: BorderRadius.circular(24),
            ),
            child: Text(
              'THE CONCEPT',
              style: GoogleFonts.spaceGrotesk(
                fontSize: 12,
                color: const Color(0xFF341452),
                fontWeight: FontWeight.w400,
                height: 1.33,
                letterSpacing: 1.20,
              ),
            ),
          ),
          const SizedBox(height: 24),
          Text(
            'Lumpia Ubi Ungu\nReinvented.',
            style: GoogleFonts.epilogue(
              fontSize: 48,
              fontWeight: FontWeight.w800,
              color: const Color(0xFF341452),
              height: 1.10,
              letterSpacing: -1.44,
            ),
          ),
          const SizedBox(height: 16),
          RichText(
            text: TextSpan(
              style: GoogleFonts.plusJakartaSans(
                fontSize: 16,
                color: const Color(0xFF4B444F),
                height: 1.50,
              ),
              children: [
                const TextSpan(
                  text:
                      'At Purplio Roll, we take the traditional Lumpia and elevate it into a modern dessert masterpiece. Our signature ',
                ),
                TextSpan(
                  text: 'Ubi Ungu',
                  style: GoogleFonts.plusJakartaSans(
                    fontSize: 16,
                    fontStyle: FontStyle.italic,
                    color: const Color(0xFF341452),
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const TextSpan(
                  text:
                      ' (Purple Yam) filling is creamy, vibrant, and wrapped in a delicate, shattered-glass crispy shell. It is a symphony of textures - smooth, crunchy, and indulgent.',
                ),
              ],
            ),
          ),
          const SizedBox(height: 24),
          Row(
            children: [
              const Icon(Icons.verified, color: Color(0xFF341452), size: 20),
              const SizedBox(width: 8),
              Text(
                'Always Fresh',
                style: GoogleFonts.spaceGrotesk(
                  fontSize: 12,
                  color: const Color(0xFF341452),
                  fontWeight: FontWeight.w400,
                  height: 1.33,
                ),
              ),
              const SizedBox(width: 16),
              const Icon(
                Icons.auto_awesome,
                color: Color(0xFF341452),
                size: 20,
              ),
              const SizedBox(width: 8),
              Text(
                'Artisan Crafted',
                style: GoogleFonts.spaceGrotesk(
                  fontSize: 12,
                  color: const Color(0xFF341452),
                  fontWeight: FontWeight.w400,
                  height: 1.33,
                ),
              ),
            ],
          ),
          const SizedBox(height: 32),
          Container(
            width: double.infinity,
            height: 400,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(24),
              border: Border.all(color: Colors.white, width: 4),
              color: Colors.grey[300],
              boxShadow: const [
                BoxShadow(
                  color: Color(0x19000000),
                  blurRadius: 10,
                  offset: Offset(0, 8),
                  spreadRadius: -6,
                ),
              ],
            ),
            child: Image.network(
              'https://imgur.com/AGZkpHO',
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) {
                return Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(Icons.image, size: 80, color: Colors.grey),
                      const SizedBox(height: 8),
                      Text(
                        'Gagal memuat gambar',
                        style: GoogleFonts.plusJakartaSans(
                          fontSize: 14,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildMenuSection() {
    return Container(
      padding: const EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Signature Flavors',
            style: GoogleFonts.epilogue(
              fontSize: 24,
              fontWeight: FontWeight.w400,
              color: const Color(0xFF341452),
              height: 1.50,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            'Choose your perfect purple companion.',
            style: GoogleFonts.plusJakartaSans(
              fontSize: 16,
              color: const Color(0xFF4B444F),
              height: 1.50,
            ),
          ),
          const SizedBox(height: 32),
          _buildMenuItem(
            'Purplio Choco Glaze',
            'Our signature ubi roll drenched in rich Belgian dark chocolate glaze and cocoa nibs.',
            '\$4.50',
            false,
          ),
          const SizedBox(height: 16),
          _buildMenuItem(
            'Purplio Cheese Melt',
            'Sweet meets savory with a gooey melted white cheddar topping and sea salt sprinkles.',
            '\$4.75',
            true,
          ),
          const SizedBox(height: 16),
          _buildMenuItem(
            'Purplio Matcha Crunch',
            'Ceremonial grade matcha dusting over crunchy almond slivers and purple yam…',
            '\$5.00',
            false,
          ),
          const SizedBox(height: 16),
          _buildMenuItem(
            'Purplio Original',
            'Pure, unadulterated purple yam filling in our world-famous extra-crispy shell.',
            '\$4.00',
            false,
          ),
        ],
      ),
    );
  }

  Widget _buildMenuItem(
    String name,
    String description,
    String price,
    bool isBestSeller,
  ) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(24),
        border: Border.all(color: const Color(0xFFF3E8FF)),
        boxShadow: const [
          BoxShadow(
            color: Color(0x0C000000),
            blurRadius: 2,
            offset: Offset(0, 1),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Container(
                width: double.infinity,
                height: 256,
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: const BorderRadius.vertical(
                    top: Radius.circular(24),
                  ),
                ),
                child: const Center(
                  child: Icon(Icons.image, size: 60, color: Colors.grey),
                ),
              ),
              if (isBestSeller)
                Positioned(
                  top: 16,
                  left: 16,
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 4,
                    ),
                    decoration: BoxDecoration(
                      color: const Color(0xFF341452),
                      borderRadius: BorderRadius.circular(24),
                    ),
                    child: Text(
                      'BEST SELLER',
                      style: GoogleFonts.spaceGrotesk(
                        fontSize: 10,
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                        height: 1.50,
                        letterSpacing: -0.50,
                      ),
                    ),
                  ),
                ),
              Positioned(
                top: 16,
                right: 16,
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 4,
                  ),
                  decoration: BoxDecoration(
                    color: const Color(0xFFFCD400),
                    borderRadius: BorderRadius.circular(24),
                  ),
                  child: Text(
                    price,
                    style: GoogleFonts.spaceGrotesk(
                      fontSize: 12,
                      color: const Color(0xFF6E5C00),
                      fontWeight: FontWeight.w400,
                      height: 1.33,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: GoogleFonts.epilogue(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: const Color(0xFF341452),
                    height: 1.40,
                  ),
                ),
                const SizedBox(height: 12),
                Text(
                  description,
                  style: GoogleFonts.plusJakartaSans(
                    fontSize: 14,
                    color: const Color(0xFF4B444F),
                    height: 1.43,
                  ),
                ),
                const SizedBox(height: 12),
                // Membungkus tombol dengan InkWell untuk mengaktifkan aksi klik tanpa merubah gaya/tampilan boks tombol
                InkWell(
                  onTap: () => _orderMenuViaWhatsApp(name),
                  borderRadius: BorderRadius.circular(12),
                  child: Container(
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(vertical: 12),
                    decoration: BoxDecoration(
                      color: const Color(0xFFF6F3F4),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Add to Box',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.plusJakartaSans(
                            fontSize: 16,
                            color: const Color(0xFF341452),
                            fontWeight: FontWeight.w700,
                            height: 1.50,
                          ),
                        ),
                        const SizedBox(width: 8),
                        const Icon(Icons.add, color: Color(0xFF341452), size: 20),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCTASection(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(24),
      padding: const EdgeInsets.all(48),
      decoration: BoxDecoration(
        color: const Color(0xFF4B2C69),
        borderRadius: BorderRadius.circular(40),
      ),
      child: Column(
        children: [
          Text(
            'Sweeten your day with Purplio.',
            textAlign: TextAlign.center,
            style: GoogleFonts.epilogue(
              fontSize: 32,
              fontWeight: FontWeight.w400,
              color: Colors.white,
              height: 1,
            ),
          ),
          const SizedBox(height: 24),
          Text(
            'Visit any of our boutique locations or order a custom box online for local delivery. Every roll is air-fried to order for maximum crunch.',
            textAlign: TextAlign.center,
            style: GoogleFonts.plusJakartaSans(
              fontSize: 16,
              color: const Color(0xFFBA96DB),
              height: 1.50,
            ),
          ),
          const SizedBox(height: 32),
          ElevatedButton(
            onPressed: () => _orderMenuViaWhatsApp("Custom Box (Purplio Day)"), // Mengaktifkan pesanan custom ke WhatsApp
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFFFCD400),
              minimumSize: const Size(double.infinity, 64),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(24),
              ),
            ),
            child: Text(
              'Get a Box',
              style: GoogleFonts.plusJakartaSans(
                fontSize: 18,
                fontWeight: FontWeight.w700,
                color: const Color(0xFF221B00),
                height: 1.56,
              ),
            ),
          ),
          const SizedBox(height: 16),
          OutlinedButton(
            onPressed: () {
              // Navigasi ke halaman ContactPage menggunakan Route yang telah didaftarkan
              Navigator.pushNamed(context, '/contact');
            },
            style: OutlinedButton.styleFrom(
              minimumSize: const Size(double.infinity, 64),
              side: const BorderSide(color: Color(0xFFBA96DB), width: 2),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(24),
              ),
            ),
            child: Text(
              'Find Locations',
              style: GoogleFonts.plusJakartaSans(
                fontSize: 18,
                fontWeight: FontWeight.w700,
                color: const Color(0xFFBA96DB),
                height: 1.56,
              ),
            ),
          ),
        ],
      ),
    );
  }
}