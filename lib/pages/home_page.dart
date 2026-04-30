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
      body: SingleChildScrollView(
        child: Column(
          children: const [
            AppBarWidget(currentPage: 'Home'),
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
