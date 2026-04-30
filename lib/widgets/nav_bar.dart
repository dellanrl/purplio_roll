import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

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
              TextButton(onPressed: () {}, child: const Text("Home")),
              const SizedBox(width: 20),
              ElevatedButton(
                onPressed: () => launchUrl(Uri.parse("https://wa.me/62895367000275")), // Kontak proposal[cite: 1]
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