import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../models/product.dart';

class DetailPage extends StatelessWidget {
  final Product product;
  const DetailPage({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Expanded(
            child: Hero(
              tag: product.tag,
              child: Container(
                color: product.themeColor,
                child: Center(child: Icon(product.icon, size: 180, color: Colors.white)),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(80),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(product.name, style: const TextStyle(fontSize: 46, fontWeight: FontWeight.bold)),
                  const SizedBox(height: 10),
                  Text(product.price, style: const TextStyle(fontSize: 28, color: Colors.purple, fontWeight: FontWeight.bold)),
                  const SizedBox(height: 25),
                  Text(product.longDesc, style: const TextStyle(fontSize: 18, height: 1.6, color: Colors.black87)),
                  const SizedBox(height: 40),
                  Row(
                    children: [
                      ElevatedButton(
                        onPressed: () => Navigator.pop(context),
                        style: ElevatedButton.styleFrom(padding: const EdgeInsets.all(20)),
                        child: const Text("Kembali"),
                      ),
                      const SizedBox(width: 20),
                      ElevatedButton(
                        onPressed: () => launchUrl(Uri.parse("https://wa.me/62895367000275")),
                        style: ElevatedButton.styleFrom(backgroundColor: Colors.green[700], padding: const EdgeInsets.all(20)),
                        child: const Text("Pesan Varian Ini", style: TextStyle(color: Colors.white)),
                      ),
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}