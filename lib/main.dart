import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'pages/home_page.dart';
import 'pages/menu_page.dart';
import 'pages/vision_page.dart';
import 'pages/contact_page.dart';

void main() {
  runApp(const PurplioRollApp());
}

class PurplioRollApp extends StatelessWidget {
  const PurplioRollApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Purplio Roll',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: const Color(0xFF341452),
        scaffoldBackgroundColor: const Color(0xFFFCF8F9),
        textTheme: GoogleFonts.plusJakartaSansTextTheme(),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),
        '/menu': (context) => const MenuPage(),
        '/vision': (context) => const VisionPage(),
        '/contact': (context) => const ContactPage(),
      },
    );
  }
}
