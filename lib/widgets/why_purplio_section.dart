import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WhyPurplioSection extends StatefulWidget {
  const WhyPurplioSection({super.key});

  @override
  State<WhyPurplioSection> createState() => _WhyPurplioSectionState();
}

class _WhyPurplioSectionState extends State<WhyPurplioSection> {
  int _hoveredIndex = -1;

  // Menggunakan ikon universal standar yang dijamin 100% aman dari error versi SDK
  final List<Map<String, dynamic>> _features = [
    {
      'icon': Icons.local_fire_department_rounded, // Representasi hawa panas air-fryer
      'title': '100% Air-Fried',
      'desc': 'Tidak digoreng minyak, melainkan di-airfryer agar krispi maksimal & bebas kolesterol.',
    },
    {
      'icon': Icons.eco_rounded,
      'title': 'Ubi Ungu Organik',
      'desc': 'Dibuat murni dari ubi ungu organik pilihan tanpa pemanis buatan.',
    },
    {
      'icon': Icons.bolt_rounded,
      'title': 'Freshly Baked',
      'desc': 'Diproduksi setiap hari secara higienis untuk menjaga mutu tekstur krispi.',
    },
    {
      'icon': Icons.workspace_premium_rounded,
      'title': 'Rasa Premium',
      'desc': 'Perpaduan resep tradisional lumpia yang dielevasi dengan topping kekinian.',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 32),
      color: const Color(0xFFFCF8F9),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Header minimalis dan hemat tempat
          Text(
            'MENGAPA PURPLIO?',
            style: GoogleFonts.spaceGrotesk(
              fontSize: 12,
              color: const Color(0xFF4B2C69),
              fontWeight: FontWeight.w700,
              letterSpacing: 1.5,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            'Ngemil Enak Tanpa Ragu',
            style: GoogleFonts.epilogue(
              fontSize: 26,
              fontWeight: FontWeight.w800,
              color: const Color(0xFF341452),
              letterSpacing: -0.5,
            ),
          ),
          const SizedBox(height: 20),

          // Grid Layout 2x2: Memotong space kosong ke bawah secara drastis
          GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: _features.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,         // Menampilkan 2 boks sejajar ke samping
              crossAxisSpacing: 12,      // Jarak horizontal antar boks
              mainAxisSpacing: 12,       // Jarak vertikal antar boks
              mainAxisExtent: 145,       // Mengunci tinggi boks agar padat dan rapi
            ),
            itemBuilder: (context, index) {
              final item = _features[index];
              final isHovered = _hoveredIndex == index;

              return MouseRegion(
                onEnter: (_) => setState(() => _hoveredIndex = index),
                onExit: (_) => setState(() => _hoveredIndex = -1),
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 200),
                  padding: const EdgeInsets.all(14),
                  decoration: BoxDecoration(
                    color: isHovered ? const Color(0xFFF3E8FF) : Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      color: isHovered ? const Color(0xFFBA96DB) : const Color(0xFFF3E8FF),
                      width: 1.5,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: isHovered 
                            ? const Color(0xFF341452).withOpacity(0.08) 
                            : const Color(0xFF341452).withOpacity(0.03), // Memperbaiki penulisan const dengan opacity
                        blurRadius: isHovered ? 12 : 6,
                        offset: const Offset(0, 4),
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(6),
                        decoration: BoxDecoration(
                          color: isHovered ? const Color(0xFF341452) : const Color(0xFFF0DBFF),
                          shape: BoxShape.circle,
                        ),
                        child: Icon(
                          item['icon'] as IconData,
                          color: isHovered ? const Color(0xFFFCD400) : const Color(0xFF341452),
                          size: 20,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        item['title'] as String,
                        style: GoogleFonts.epilogue(
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          color: const Color(0xFF341452),
                        ),
                      ),
                      const SizedBox(height: 4),
                      Expanded(
                        child: Text(
                          item['desc'] as String,
                          style: GoogleFonts.plusJakartaSans(
                            fontSize: 11,
                            color: const Color(0xFF6B6370),
                            height: 1.3,
                          ),
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
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
}