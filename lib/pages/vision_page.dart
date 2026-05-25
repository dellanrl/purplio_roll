import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
import '../widgets/app_bar_widget.dart';
import '../widgets/footer_widget.dart';

class VisionPage extends StatefulWidget {
  const VisionPage({super.key});

  @override
  State<VisionPage> createState() => _VisionPageState();
}

class _VisionPageState extends State<VisionPage> {
  int _activeCardIndex = -1;

  Future<void> _redirectToWhatsApp(String section) async {
    final String message = "Halo Purplio Roll, saya tertarik setelah membaca halaman $section!";
    final Uri whatsappUrl = Uri.parse("https://wa.me/62895367000275?text=${Uri.encodeComponent(message)}");
    if (!await launchUrl(whatsappUrl, mode: LaunchMode.externalApplication)) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Gagal membuka WhatsApp')),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(83), // Sesuaikan dengan tinggi top bar-mu
        child: const AppBarWidget(currentPage: 'Home'),
      ),
      backgroundColor: const Color(0xFFFCF8F9),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // ================= 1. THE HERO TITLE (Tegas & Bold) =================
                  Text(
                    'OUR VISION & MISSION',
                    style: GoogleFonts.spaceGrotesk(
                      fontSize: 13,
                      color: const Color(0xFF4B2C69),
                      fontWeight: FontWeight.bold,
                      letterSpacing: 2.0,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'Crafting Joy through Premium Purple Hues.',
                    style: GoogleFonts.epilogue(
                      fontSize: 32, // Ukuran ideal, tegas, mudah dibaca
                      fontWeight: FontWeight.w800,
                      color: const Color(0xFF341452),
                      height: 1.2,
                    ),
                  ),
                  const SizedBox(height: 16),
                  Text(
                    'PURPLIO ROLL hadir mengelevasi camilan lumpia tradisional menjadi dessert modern premium. Kami berkomitmen menyajikan kelembutan pasta ubi ungu organik pilihan yang dibalut kulit shattered-glass krispi, diproses 100% sehat dengan teknologi air fryer tanpa minyak.',
                    style: GoogleFonts.plusJakartaSans(
                      fontSize: 15, // Ukuran teks deskripsi dinaikkan agar jelas
                      color: const Color(0xFF5C5461),
                      height: 1.6,
                    ),
                  ),
                  const SizedBox(height: 24),

                  // ================= 2. DEKORASI BADGE BERDAMPINGAN =================
                  Row(
                    children: [
                      Expanded(child: _buildFeatureBadge(Icons.eco_rounded, 'Ubi Ungu Organik', 'Grade-A Petani Lokal')),
                      const SizedBox(width: 12),
                      Expanded(child: _buildFeatureBadge(Icons.local_fire_department_rounded, '100% Air-Fried', 'Crispy Tanpa Minyak')),
                    ],
                  ),
                  const SizedBox(height: 28),

                  // ================= 3. STRATEGI VISI UTAMA (Card Bold Elegan) =================
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(24),
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        colors: [Color(0xFF341452), Color(0xFF4B2C69)],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                      borderRadius: BorderRadius.circular(24),
                      boxShadow: [
                        BoxShadow(
                          color: const Color(0xFF341452).withOpacity(0.15),
                          blurRadius: 20,
                          offset: const Offset(0, 10),
                        ),
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            const Icon(Icons.auto_awesome_rounded, color: Color(0xFFFCD400), size: 24),
                            const SizedBox(width: 10),
                            Text(
                              'THE NORTH STAR (VISI)',
                              style: GoogleFonts.spaceGrotesk(
                                fontSize: 12,
                                color: const Color(0xFFFCD400),
                                fontWeight: FontWeight.bold,
                                letterSpacing: 1.5,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 14),
                        Text(
                          '"Menjadi pelopor camilan inovatif sehat berbasis ubi ungu yang dicintai secara global dan menginspirasi gaya hidup positif generasi muda."',
                          style: GoogleFonts.epilogue(
                            fontSize: 18, // Dinaikkan agar menonjol sebagai kutipan utama
                            fontWeight: FontWeight.w700,
                            color: Colors.white,
                            height: 1.4,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 32),

                  // ================= 4. MISSION SECTION (List Padat & Interaktif) =================
                  Text(
                    'Our Daily Mission',
                    style: GoogleFonts.epilogue(
                      fontSize: 22,
                      fontWeight: FontWeight.w800,
                      color: const Color(0xFF341452),
                    ),
                  ),
                  const SizedBox(height: 16),
                  
                  _buildInteractiveMissionCard(
                    0,
                    Icons.high_quality_rounded,
                    'Premium Ingredient Quality',
                    'Konsisten menggunakan ubi ungu organik mutu terbaik demi menjaga keaslian rasa dan kandungan nutrisi tinggi.',
                  ),
                  const SizedBox(height: 12),
                  _buildInteractiveMissionCard(
                    1,
                    Icons.health_and_safety_rounded,
                    'Healthy Culinary Innovation',
                    'Mengembangkan fusi rasa dessert modern yang krispi lewat proses air-fried, membuktikan bahwa ngemil enak bisa tetap sehat.',
                  ),
                  const SizedBox(height: 32),

                  // ================= 5. KREASI USP POIN UTAMA =================
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(24),
                      border: Border.all(color: const Color(0xFFF3E8FF), width: 1.5),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'What Makes Us Special?',
                          style: GoogleFonts.epilogue(
                            fontSize: 18,
                            fontWeight: FontWeight.w800,
                            color: const Color(0xFF341452),
                          ),
                        ),
                        const SizedBox(height: 16),
                        _buildUSPLine('Warna Ungu Alami', 'Tanpa zat pewarna buatan, murni pigmen ubi ungu.'),
                        _buildUSPLine('Kaya Antioksidan', 'Tinggi kandungan antosianin alami yang baik untuk tubuh.'),
                        _buildUSPLine('Air-Fried Perfection', 'Tekstur luar ekstra renyah hancur di mulut tanpa minyak jenuh.'),
                      ],
                    ),
                  ),
                  const SizedBox(height: 28),

                  // ================= 6. CTA BOX SECTION (Simpel & Keren) =================
                  Container(
                    padding: const EdgeInsets.all(24),
                    decoration: BoxDecoration(
                      color: const Color(0xFF4B2C69),
                      borderRadius: BorderRadius.circular(24),
                    ),
                    child: Column(
                      children: [
                        Text(
                          'Ready to taste the revolution?',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.epilogue(
                            fontSize: 20,
                            fontWeight: FontWeight.w800,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(height: 18),
                        Row(
                          children: [
                            Expanded(
                              child: ElevatedButton(
                                onPressed: () => _redirectToWhatsApp("Vision Page"),
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: const Color(0xFFFCD400),
                                  padding: const EdgeInsets.symmetric(vertical: 16),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(14),
                                  ),
                                  elevation: 0,
                                ),
                                child: Text(
                                  'Order Now',
                                  style: GoogleFonts.spaceGrotesk(
                                    fontSize: 15,
                                    color: const Color(0xFF221B00),
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(width: 12),
                            Expanded(
                              child: OutlinedButton(
                                onPressed: () {
                                  Navigator.pushNamed(context, '/contact');
                                },
                                style: OutlinedButton.styleFrom(
                                  padding: const EdgeInsets.symmetric(vertical: 16),
                                  side: const BorderSide(color: Colors.white60, width: 1.5),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(14),
                                  ),
                                ),
                                child: Text(
                                  'Visit Store',
                                  style: GoogleFonts.spaceGrotesk(
                                    fontSize: 15,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const FooterWidget(),
          ],
        ),
      ),
    );
  }

  // Widget Badge Minimalis & Padat Ruang
  Widget _buildFeatureBadge(IconData icon, String title, String subtitle) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: const Color(0xFFF3E8FF), width: 1),
      ),
      child: Row(
        children: [
          Icon(icon, color: const Color(0xFF341452), size: 24),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: GoogleFonts.spaceGrotesk(fontSize: 13, color: const Color(0xFF341452), fontWeight: FontWeight.bold),
                ),
                Text(
                  subtitle,
                  style: GoogleFonts.plusJakartaSans(fontSize: 11, color: const Color(0xFF6B6370)),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // Card Misi Fleksibel, Padat Vertikal, dan Memiliki Efek Sentuh Halus
  Widget _buildInteractiveMissionCard(int index, IconData icon, String title, String description) {
    final isActive = _activeCardIndex == index;
    return MouseRegion(
      onEnter: (_) => setState(() => _activeCardIndex = index),
      onExit: (_) => setState(() => _activeCardIndex = -1),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 150),
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: isActive ? const Color(0xFFF3E8FF) : Colors.white,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: isActive ? const Color(0xFFBA96DB) : const Color(0xFFF3E8FF), width: 1.5),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: isActive ? const Color(0xFF341452) : const Color(0xFFF0DBFF),
                shape: BoxShape.circle,
              ),
              child: Icon(icon, color: isActive ? const Color(0xFFFCD400) : const Color(0xFF341452), size: 22),
            ),
            const SizedBox(width: 14),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: GoogleFonts.epilogue(fontSize: 16, fontWeight: FontWeight.bold, color: const Color(0xFF341452)),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    description,
                    style: GoogleFonts.plusJakartaSans(fontSize: 14, color: const Color(0xFF5C5461), height: 1.5),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Susunan List Poin yang Bersih dan Proporsional
  Widget _buildUSPLine(String title, String description) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Icon(Icons.check_circle_outline_rounded, color: Color(0xFF4B2C69), size: 20),
          const SizedBox(width: 10),
          Expanded(
            child: RichText(
              text: TextSpan(
                style: GoogleFonts.plusJakartaSans(fontSize: 14, color: const Color(0xFF5C5461)),
                children: [
                  TextSpan(text: '$title — ', style: const TextStyle(fontWeight: FontWeight.bold, color: Color(0xFF341452))),
                  TextSpan(text: description),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}