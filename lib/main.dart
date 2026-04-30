import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'pages/home_page.dart';

void main() => runApp(const PurplioRollApp());

class PurplioRollApp extends StatelessWidget {
  const PurplioRollApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Purplio Roll',
      theme: ThemeData(
        textTheme: GoogleFonts.fredokaTextTheme(), // Gaya ceria ala Good Day
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF9575CD)),
      ),
      home: const HomePage(),
    );
  }
}