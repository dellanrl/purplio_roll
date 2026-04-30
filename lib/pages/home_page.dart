import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../models/product.dart';
import '../widgets/nav_bar.dart';
import '../widgets/hero_section.dart';
import '../widgets/footer.dart';
import 'detail_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const NavBar(),
            const HeroSection(),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 60),
              child: Text("Varian Paling Nagih", 
                style: GoogleFonts.fredoka(fontSize: 32, fontWeight: FontWeight.bold)),
            ),
            Wrap(
              spacing: 30,
              runSpacing: 30,
              children: purplioProducts.map((p) => _buildCard(context, p)).toList(),
            ),
            const Footer(),
          ],
        ),
      ),
    );
  }

  Widget _buildCard(BuildContext context, Product p) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: () {
          Navigator.push(context, PageRouteBuilder(
            pageBuilder: (_, __, ___) => DetailPage(product: p),
            transitionsBuilder: (_, anim, __, child) => FadeTransition(opacity: anim, child: child),
          ));
        },
        child: Hero(
          tag: p.tag,
          child: Container(
            width: 280,
            padding: const EdgeInsets.all(25),
            decoration: BoxDecoration(color: p.themeColor, borderRadius: BorderRadius.circular(30)),
            child: Column(
              children: [
                const Icon(Icons.auto_awesome, size: 80, color: Colors.white),
                const SizedBox(height: 15),
                Text(p.name, style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold, decoration: TextDecoration.none, color: Colors.black)),
                Text(p.shortDesc, style: const TextStyle(fontSize: 14, color: Colors.black54, decoration: TextDecoration.none)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}