import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  // Fungsi untuk membuka WhatsApp
  Future<void> _launchWhatsApp() async {
    final Uri url = Uri.parse("https://wa.me/62895367000275");
    if (!await launchUrl(url, mode: LaunchMode.externalApplication)) {
      throw Exception('Tidak dapat membuka WhatsApp');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("PURPLIO ROLL", 
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: Colors.purple[800])),
          Row(
            children: [
              TextButton(
                onPressed: () {
                  // Navigasi kembali ke halaman Home jika sedang di halaman lain
                  if (ModalRoute.of(context)?.settings.name != '/') {
                    Navigator.pushNamedAndRemoveUntil(context, '/', (route) => false);
                  }
                }, 
                child: const Text("Home"),
              ),
              const SizedBox(width: 20),
              ElevatedButton(
                onPressed: _launchWhatsApp, // Mengaktifkan fungsi buka WhatsApp
                style: ElevatedButton.styleFrom(backgroundColor: Colors.brown[700]),
                child: const Text("Order Sekarang", style: TextStyle(color: Colors.white)),
              ),
            ],
          )
        ],
      ),
    );
  }
}