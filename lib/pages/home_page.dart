import 'package:flutter/material.dart';
import '../widgets/app_bar_widget.dart';
import '../widgets/hero_section.dart';
import '../widgets/why_purplio_section.dart';
import '../widgets/newsletter_section.dart';
import '../widgets/footer_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(80), // Sesuaikan dengan tinggi top bar-mu
        child: const AppBarWidget(currentPage: 'Home'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: const [
            HeroSection(),
            WhyPurplioSection(),
            NewsletterSection(),
            FooterWidget(),
          ],
        ),
      ),
    );
  }
}