import 'package:flutter/material.dart';

class Product {
  final String name;
  final String price;
  final String shortDesc;
  final String longDesc;
  final Color themeColor;
  final String tag;

  Product({
    required this.name,
    required this.price,
    required this.shortDesc,
    required this.longDesc,
    required this.themeColor,
    required this.tag,
  });
}

final List<Product> purplioProducts = [
  Product(
    name: "Purplio Classic",
    price: "Rp 15.000",
    shortDesc: "Manis alami ubi ungu.",
    longDesc: "Varian original yang menonjolkan indeks glikemik rendah (GI 54). Diproses dengan teknologi air frying untuk hasil yang renyah namun rendah lemak.",
    themeColor: const Color(0xFFD1C4E9),
    tag: "classic",
  ),
  Product(
    name: "Purplio Choco Lava",
    price: "Rp 18.000",
    shortDesc: "Coklat lumer melimpah.",
    longDesc: "Isian coklat premium yang lumer sempurna berpadu dengan ubi ungu tinggi antioksidan. Pilihan terbaik untuk camilan manis yang tetap sehat.",
    themeColor: const Color(0xFFBCAAA4),
    tag: "choco",
  ),
  Product(
    name: "Purplio Cheese Melt",
    price: "Rp 18.000",
    shortDesc: "Gurih keju lumer.",
    longDesc: "Kombinasi serat pangan ubi ungu dengan keju gurih yang creamy[cite: 1]. Camilan ini memberikan rasa kenyang lebih lama[cite: 1].",
    themeColor: const Color(0xFFFFE082),
    tag: "cheese",
  ),
];