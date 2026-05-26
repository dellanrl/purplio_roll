import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
import '../widgets/app_bar_widget.dart';
import '../widgets/footer_widget.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  // Indeks item yang sedang disentuh (untuk micro-interaction)
  int _hoveredIndex = -1;

  // Daftar Menu Purplio Roll yang padat, rapi, dan konstan
  final List<Map<String, dynamic>> _menuItems = [
    {
      'name': 'Purplio Choco Glaze',
      'desc': 'Ubi roll renyah disiram Belgian dark chocolate glaze melimpah.',
      'price': '\$4.50',
      'isBestSeller': false,
      'image': 'https://i.imgur.com/5dcWKF0.png',
    },
    {
      'name': 'Purplio Cheese Melt',
      'desc': 'Sweet-savory dengan gooey melted white cheddar dan sea salt.',
      'price': '\$4.75',
      'isBestSeller': true,
      'image': 'https://i.imgur.com/mQnweWM.png',
    },
    {
      'name': 'Purplio Matcha Crunch',
      'desc': 'Dusting matcha premium dengan taburan renyah almond slivers.',
      'price': '\$5.00',
      'isBestSeller': false,
      'image': 'https://i.imgur.com/rRjPNj6.png',
    },
    {
      'name': 'Purplio Original',
      'desc':
          'Murni kelembutan pasta ubi ungu organik dalam kulit super krispi.',
      'price': '\$4.00',
      'isBestSeller': false,
      'image': 'https://i.imgur.com/LJBIn97.png',
    },
  ];

  // Fungsi pengiriman format pesan instan otomatis ke WhatsApp
  Future<void> _orderViaWhatsApp(String productName) async {
    final String message =
        "Halo Purplio Roll, saya ingin memesan varian menu: $productName";
    final Uri whatsappUrl = Uri.parse(
      "https://wa.me/62895367000275?text=${Uri.encodeComponent(message)}",
    );

    if (!await launchUrl(whatsappUrl, mode: LaunchMode.externalApplication)) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text(
              'Gagal membuka WhatsApp. Pastikan aplikasi terinstal.',
            ),
          ),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(
          83,
        ), // Sesuaikan dengan tinggi top bar-mu
        child: const AppBarWidget(currentPage: 'Menu'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 16),
            _buildConceptSection(),
            _buildMenuSection(),
            _buildCTASection(context),
            const FooterWidget(),
          ],
        ),
      ),
    );
  }

  // 1. CONCEPT SECTION: Dibuat lebih padat ruang, hemat tempat, dan rapi
  Widget _buildConceptSection() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
            decoration: BoxDecoration(
              color: const Color(0xFFF0DBFF),
              borderRadius: BorderRadius.circular(24),
            ),
            child: Text(
              'THE CONCEPT',
              style: GoogleFonts.spaceGrotesk(
                fontSize: 10,
                color: const Color(0xFF341452),
                fontWeight: FontWeight.bold,
                letterSpacing: 1.0,
              ),
            ),
          ),
          const SizedBox(height: 12),
          Text(
            'Lumpia Ubi Ungu Reinvented.',
            style: GoogleFonts.epilogue(
              fontSize: 32,
              fontWeight: FontWeight.w800,
              color: const Color(0xFF341452),
              letterSpacing: -1.0,
            ),
          ),
          const SizedBox(height: 8),
          RichText(
            text: TextSpan(
              style: GoogleFonts.plusJakartaSans(
                fontSize: 14,
                color: const Color(0xFF4B444F),
                height: 1.4,
              ),
              children: [
                const TextSpan(
                  text:
                      'At Purplio Roll, we take the traditional Lumpia and elevate it into a modern dessert masterpiece. Our signature ',
                ),
                TextSpan(
                  text: 'Ubi Ungu',
                  style: GoogleFonts.plusJakartaSans(
                    fontStyle: FontStyle.italic,
                    color: const Color(0xFF341452),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const TextSpan(
                  text:
                      ' filling is creamy, vibrant, wrapped in a delicate crispy shell air-fried to perfection.',
                ),
              ],
            ),
          ),
          const SizedBox(height: 16),
          // Mengurangi tinggi container banner agar tidak boros layar kosong
          Container(
            width: double.infinity,
            height: 220,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  // ignore: deprecated_member_use
                  color: Colors.black.withOpacity(0.05),
                  blurRadius: 10,
                  offset: const Offset(0, 4),
                ),
              ],
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.network(
                'https://i.imgur.com/LJBIn97.png',
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) {
                  return Container(
                    color: Colors.grey[300],
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(
                            Icons.image_not_supported,
                            size: 50,
                            color: Colors.grey,
                          ),
                          const SizedBox(height: 8),
                          Text(
                            'Gambar gagal dimuat',
                            style: GoogleFonts.plusJakartaSans(
                              fontSize: 12,
                              color: Colors.grey,
                            ),
                          ),
                        ],
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

  // 2. SIGNATURE MENU SECTION: Menggunakan GridView 2 Kolom (Sangat Padat & Simpel)
  Widget _buildMenuSection() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Signature Flavors',
            style: GoogleFonts.epilogue(
              fontSize: 22,
              fontWeight: FontWeight.w800,
              color: const Color(0xFF341452),
            ),
          ),
          Text(
            'Choose your perfect purple companion.',
            style: GoogleFonts.plusJakartaSans(
              fontSize: 13,
              color: const Color(0xFF6B6370),
            ),
          ),
          const SizedBox(height: 20),

          GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: _menuItems.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, // 2 menu sejajar ke samping kanan-kiri
              crossAxisSpacing: 12, // Jarak horizontal antar kotak menu
              mainAxisSpacing: 12, // Jarak vertikal antar kotak menu
              mainAxisExtent:
                  275, // Kunci tinggi boks menu agar seragam dan presisi
            ),
            itemBuilder: (context, index) {
              final item = _menuItems[index];
              final isHovered = _hoveredIndex == index;

              return MouseRegion(
                onEnter: (_) => setState(() => _hoveredIndex = index),
                onExit: (_) => setState(() => _hoveredIndex = -1),
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 150),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      color: isHovered
                          ? const Color(0xFFBA96DB)
                          : const Color(0xFFF3E8FF),
                      width: 1.5,
                    ),
                    boxShadow: [
                      BoxShadow(
                        // ignore: deprecated_member_use
                        color: Colors.black.withOpacity(
                          isHovered ? 0.06 : 0.02,
                        ),
                        blurRadius: isHovered ? 10 : 4,
                        offset: const Offset(0, 3),
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Foto Mini Menu
                      Stack(
                        children: [
                          Container(
                            width: double.infinity,
                            height: 120,
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.vertical(
                                top: Radius.circular(18),
                              ),
                            ),
                            child: ClipRRect(
                              borderRadius: const BorderRadius.vertical(
                                top: Radius.circular(18),
                              ),
                              child: Image.network(
                                item['image'] as String,
                                fit: BoxFit.cover,
                                errorBuilder: (context, error, stackTrace) {
                                  return Container(
                                    color: Colors.grey[300],
                                    child: Center(
                                      child: Icon(
                                        Icons.image_not_supported,
                                        size: 40,
                                        color: Colors.grey[500],
                                      ),
                                    ),
                                  );
                                },
                              ),
                            ),
                          ),
                          if (item['isBestSeller'] as bool)
                            Positioned(
                              top: 8,
                              left: 8,
                              child: Container(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 8,
                                  vertical: 3,
                                ),
                                decoration: BoxDecoration(
                                  color: const Color(0xFF341452),
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                child: Text(
                                  'BEST',
                                  style: GoogleFonts.spaceGrotesk(
                                    fontSize: 9,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          Positioned(
                            top: 8,
                            right: 8,
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 8,
                                vertical: 3,
                              ),
                              decoration: BoxDecoration(
                                color: const Color(0xFFFCD400),
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Text(
                                item['price'] as String,
                                style: GoogleFonts.spaceGrotesk(
                                  fontSize: 10,
                                  color: const Color(0xFF6E5C00),
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      // Detail Informasi Menu
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              item['name'] as String,
                              style: GoogleFonts.epilogue(
                                fontSize: 13,
                                fontWeight: FontWeight.bold,
                                color: const Color(0xFF341452),
                              ),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                            const SizedBox(height: 4),
                            Text(
                              item['desc'] as String,
                              style: GoogleFonts.plusJakartaSans(
                                fontSize: 10,
                                color: const Color(0xFF6B6370),
                                height: 1.3,
                              ),
                              maxLines: 3,
                              overflow: TextOverflow.ellipsis,
                            ),
                            const SizedBox(height: 10),
                            // Tombol Add to Box yang diaktifkan fungsinya
                            InkWell(
                              onTap: () =>
                                  _orderViaWhatsApp(item['name'] as String),
                              borderRadius: BorderRadius.circular(10),
                              child: Container(
                                width: double.infinity,
                                padding: const EdgeInsets.symmetric(
                                  vertical: 8,
                                ),
                                decoration: BoxDecoration(
                                  color: isHovered
                                      ? const Color(0xFFF0DBFF)
                                      : const Color(0xFFF6F3F4),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Add to Box',
                                      style: GoogleFonts.plusJakartaSans(
                                        fontSize: 12,
                                        color: const Color(0xFF341452),
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    const SizedBox(width: 4),
                                    const Icon(
                                      Icons.add_rounded,
                                      color: Color(0xFF341452),
                                      size: 14,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }

  // 3. CTA CARD SECTION: Dibuat Simpel, Ringkas, Padat Ruang
  Widget _buildCTASection(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: const Color(0xFF4B2C69),
        borderRadius: BorderRadius.circular(24),
      ),
      child: Column(
        children: [
          Text(
            'Sweeten your day with Purplio.',
            textAlign: TextAlign.center,
            style: GoogleFonts.epilogue(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            'Visit any of our boutique locations or order a custom box online for local delivery. Air-fried to order for maximum crunch.',
            textAlign: TextAlign.center,
            style: GoogleFonts.plusJakartaSans(
              fontSize: 13,
              color: const Color(0xFFBA96DB),
              height: 1.4,
            ),
          ),
          const SizedBox(height: 20),
          // Mengubah tombol menjadi berdampingan (Row) agar menghemat space layar vertikal
          Row(
            children: [
              Expanded(
                child: ElevatedButton(
                  onPressed: () => _orderViaWhatsApp("Custom Box (Menu CTA)"),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFFCD400),
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(14),
                    ),
                  ),
                  child: Text(
                    'Get a Box',
                    style: GoogleFonts.plusJakartaSans(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: const Color(0xFF221B00),
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: OutlinedButton(
                  onPressed: () {
                    Navigator.pushNamed(
                      context,
                      '/contact',
                    ); // Mengaktifkan fungsi temukan lokasi kontak rute
                  },
                  style: OutlinedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    side: const BorderSide(
                      color: Color(0xFFBA96DB),
                      width: 1.5,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(14),
                    ),
                  ),
                  child: Text(
                    'Find Locations',
                    style: GoogleFonts.plusJakartaSans(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: const Color(0xFFBA96DB),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
