import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(50),
      color: const Color(0xFF3E2723), // Coklat Gelap
      child: Column(
        children: [
          const Text(
            "PURPLIO ROLL",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 24),
          ),
          const SizedBox(height: 10),
          const Text(
            "Tim Program Mahasiswa Wirausaha (PMW) UNESA 2026",
            style: TextStyle(color: Colors.white70),
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                icon: const Icon(Icons.camera_alt, color: Colors.white),
                onPressed: () => launchUrl(Uri.parse("https://instagram.com/ubibites.crunch")), // Link IG kalian
              ),
              const SizedBox(width: 20),
              const Text(
                "Madiun, Jawa Timur", // Lokasi usaha di Madiun
                style: TextStyle(color: Colors.white54),
              ),
            ],
          ),
        ],
      ),
    );
  }
}