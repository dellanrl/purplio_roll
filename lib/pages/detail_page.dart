import 'package:flutter/material.dart';
import '../models/product.dart';

class DetailPage extends StatelessWidget {
  final Product product;
  const DetailPage({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.transparent, elevation: 0),
      extendBodyBehindAppBar: true,
      body: Row(
        children: [
          Expanded(
            child: Hero(
              tag: product.tag,
              child: Container(
                color: product.themeColor,
                child: const Center(child: Icon(Icons.auto_awesome, size: 200, color: Colors.white)),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(60),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(product.name, style: const TextStyle(fontSize: 48, fontWeight: FontWeight.bold)),
                  Text(product.price, style: const TextStyle(fontSize: 28, color: Colors.purple, fontWeight: FontWeight.bold)),
                  const SizedBox(height: 30),
                  Text(product.longDesc, style: const TextStyle(fontSize: 18, height: 1.6)),
                  const SizedBox(height: 40),
                  ElevatedButton(
                    onPressed: () => Navigator.pop(context),
                    child: const Text("Kembali ke Menu"),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}