import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'pages/home_page.dart';
import 'pages/menu_page.dart';
import 'pages/contact_page.dart';

void main() => runApp(const PurplioRollApp());

class PurplioRollApp extends StatelessWidget {
  const PurplioRollApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Purplio Roll',
      theme: ThemeData(
        textTheme: GoogleFonts.fredokaTextTheme(),
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF9575CD)),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),
        '/menu': (context) => const MenuPage(),       // Menghubungkan ke menu_page.dart di folder kamu
        '/contact': (context) => const ContactPage(), // Menghubungkan ke contact_page.dart di folder kamu
      },
    );
  }
}