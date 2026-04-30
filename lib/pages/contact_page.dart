import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../widgets/app_bar_widget.dart';
import '../widgets/footer_widget.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const AppBarWidget(currentPage: 'Contact'),
            const SizedBox(height: 80),
            _buildHeroSection(),
            _buildOrderingMethods(),
            _buildContactForm(),
            const SizedBox(height: 80),
            const FooterWidget(),
          ],
        ),
      ),
    );
  }

  Widget _buildHeroSection() {
    return Container(
      padding: const EdgeInsets.all(24),
      child: Column(
        children: [
          Text(
            'CONNECT WITH US',
            style: GoogleFonts.spaceGrotesk(
              fontSize: 16,
              color: const Color(0xFF341452),
              fontWeight: FontWeight.w400,
              height: 1.50,
              letterSpacing: 1.60,
            ),
          ),
          const SizedBox(height: 12),
          Text(
            'Craving a Sweet Roll?',
            style: GoogleFonts.epilogue(
              fontSize: 24,
              fontWeight: FontWeight.w400,
              color: const Color(0xFF341452),
              height: 1.50,
            ),
          ),
          const SizedBox(height: 24),
          Text(
            'Whether you are looking for a quick delivery or want to visit us in person, we have made ordering your favorite treats easier than ever.',
            textAlign: TextAlign.center,
            style: GoogleFonts.plusJakartaSans(
              fontSize: 16,
              color: const Color(0xFF4B444F),
              height: 1.50,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildOrderingMethods() {
    return Container(
      padding: const EdgeInsets.all(24),
      child: Column(
        children: [
          // Visit Boutique
          Container(
            width: double.infinity,
            height: 400,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Colors.grey[300],
            ),
            child: Stack(
              children: [
                const Center(
                  child: Icon(Icons.image, size: 80, color: Colors.grey),
                ),
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Container(
                    padding: const EdgeInsets.all(48),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                        colors: [
                          const Color(0xE5341452),
                          const Color(0x33341452),
                          const Color(0x00341452),
                        ],
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Visit Our Boutique',
                          style: GoogleFonts.epilogue(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                            height: 1.50,
                          ),
                        ),
                        const SizedBox(height: 12),
                        Text(
                          'Experience the aroma of freshly baked rolls in our signature purple lounge.',
                          style: GoogleFonts.plusJakartaSans(
                            fontSize: 16,
                            color: const Color(0xFFF3E8FF),
                            height: 1.50,
                          ),
                        ),
                        const SizedBox(height: 24),
                        Row(
                          children: [
                            Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 16,
                                vertical: 8,
                              ),
                              decoration: BoxDecoration(
                                color: const Color(0xFFFCD400),
                                borderRadius: BorderRadius.circular(24),
                              ),
                              child: Text(
                                'Jakarta Selatan',
                                style: GoogleFonts.spaceGrotesk(
                                  fontSize: 12,
                                  color: const Color(0xFF221B00),
                                  fontWeight: FontWeight.w400,
                                  height: 1.33,
                                ),
                              ),
                            ),
                            const SizedBox(width: 16),
                            Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 16,
                                vertical: 8,
                              ),
                              decoration: BoxDecoration(
                                color: Colors.white.withValues(alpha: 0.2),
                                borderRadius: BorderRadius.circular(24),
                              ),
                              child: Text(
                                'Open 09:00 - 21:00',
                                style: GoogleFonts.spaceGrotesk(
                                  fontSize: 12,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400,
                                  height: 1.33,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 16),
          // WhatsApp Direct
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(48),
            decoration: BoxDecoration(
              color: Colors.white.withValues(alpha: 0.7),
              borderRadius: BorderRadius.circular(12),
              border: Border.all(
                color: const Color(0xFFF3E8FF),
                width: 2,
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 48,
                  height: 48,
                  decoration: BoxDecoration(
                    color: const Color(0xFF4B2C69),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: const Icon(
                    Icons.chat,
                    color: Colors.white,
                    size: 24,
                  ),
                ),
                const SizedBox(height: 24),
                Text(
                  'WhatsApp\nDirect',
                  style: GoogleFonts.epilogue(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: const Color(0xFF341452),
                    height: 1.50,
                  ),
                ),
                const SizedBox(height: 12),
                Text(
                  'Order directly through our concierge for special requests and bulk orders.',
                  style: GoogleFonts.plusJakartaSans(
                    fontSize: 16,
                    color: const Color(0xFF4B444F),
                    height: 1.50,
                  ),
                ),
                const SizedBox(height: 24),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Chat Now',
                      style: GoogleFonts.spaceGrotesk(
                        fontSize: 16,
                        color: const Color(0xFF341452),
                        fontWeight: FontWeight.w400,
                        height: 1.50,
                      ),
                    ),
                    const Icon(
                      Icons.arrow_forward,
                      color: Color(0xFF341452),
                      size: 20,
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 16),
          // Delivery Apps
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(48),
            decoration: BoxDecoration(
              color: const Color(0x19FCD400),
              borderRadius: BorderRadius.circular(12),
              border: Border.all(
                color: const Color(0x194B2C69),
                width: 1,
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 48,
                  height: 48,
                  decoration: BoxDecoration(
                    color: const Color(0xFFFCD400),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: const Icon(
                    Icons.delivery_dining,
                    color: Color(0xFF6E5C00),
                    size: 24,
                  ),
                ),
                const SizedBox(height: 24),
                Text(
                  'Delivery Apps',
                  style: GoogleFonts.epilogue(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: const Color(0xFF341452),
                    height: 1.50,
                  ),
                ),
                const SizedBox(height: 12),
                Text(
                  'Find us on your favorite platforms for lighting fast delivery to your doorstep.',
                  style: GoogleFonts.plusJakartaSans(
                    fontSize: 16,
                    color: const Color(0xFF4B444F),
                    height: 1.50,
                  ),
                ),
                const SizedBox(height: 24),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(
                            color: const Color(0xFFF3E8FF),
                            width: 1,
                          ),
                        ),
                        child: Text(
                          'GrabFood',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.plusJakartaSans(
                            fontSize: 14,
                            color: const Color(0xFF16A34A),
                            fontWeight: FontWeight.w700,
                            height: 1.43,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(
                            color: const Color(0xFFF3E8FF),
                            width: 1,
                          ),
                        ),
                        child: Text(
                          'GoFood',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.plusJakartaSans(
                            fontSize: 14,
                            color: const Color(0xFFDC2626),
                            fontWeight: FontWeight.w700,
                            height: 1.43,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 16),
          // Contact Details
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(48),
            decoration: BoxDecoration(
              color: Colors.white.withValues(alpha: 0.7),
              borderRadius: BorderRadius.circular(12),
              border: Border.all(
                color: const Color(0x194B2C69),
                width: 1,
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Need Help?',
                  style: GoogleFonts.epilogue(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: const Color(0xFF341452),
                    height: 1.50,
                  ),
                ),
                const SizedBox(height: 24),
                Row(
                  children: [
                    const Icon(
                      Icons.phone,
                      color: Color(0xFF341452),
                      size: 20,
                    ),
                    const SizedBox(width: 24),
                    Text(
                      '+62 21 555 0192',
                      style: GoogleFonts.plusJakartaSans(
                        fontSize: 16,
                        color: const Color(0xFF4B444F),
                        height: 1.50,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                Row(
                  children: [
                    const Icon(
                      Icons.email,
                      color: Color(0xFF341452),
                      size: 20,
                    ),
                    const SizedBox(width: 24),
                    Text(
                      'hello@purplioroll.com',
                      style: GoogleFonts.plusJakartaSans(
                        fontSize: 16,
                        color: const Color(0xFF4B444F),
                        height: 1.50,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildContactForm() {
    return Container(
      padding: const EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Send us a Message',
            style: GoogleFonts.epilogue(
              fontSize: 24,
              fontWeight: FontWeight.w600,
              color: const Color(0xFF341452),
            ),
          ),
          const SizedBox(height: 16),
          Text(
            'Have a question about our flavors or interested in a collaboration? Fill out the form and our team will get back to you within 24 hours.',
            style: GoogleFonts.plusJakartaSans(
              fontSize: 16,
              color: const Color(0xFF4B444F),
              height: 1.50,
            ),
          ),
          const SizedBox(height: 32),
          Container(
            padding: const EdgeInsets.all(48),
            decoration: BoxDecoration(
              color: Colors.white.withValues(alpha: 0.7),
              borderRadius: BorderRadius.circular(24),
              border: Border.all(
                color: const Color(0x194B2C69),
                width: 1,
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildFormField('Full Name', 'Your name'),
                const SizedBox(height: 24),
                _buildFormField('Email Address', 'hello@example.com'),
                const SizedBox(height: 24),
                _buildFormField('Subject', 'Order Inquiry'),
                const SizedBox(height: 24),
                _buildFormField('Message', 'Tell us what is on your mind...', maxLines: 4),
                const SizedBox(height: 32),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF341452),
                    minimumSize: const Size(double.infinity, 64),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(24),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Send Message',
                        style: GoogleFonts.spaceGrotesk(
                          fontSize: 16,
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                          height: 1.50,
                        ),
                      ),
                      const SizedBox(width: 8),
                      const Icon(Icons.send, color: Colors.white, size: 20),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildFormField(String label, String hint, {int maxLines = 1}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: GoogleFonts.spaceGrotesk(
            fontSize: 12,
            color: const Color(0xFF341452),
            fontWeight: FontWeight.w700,
            height: 1.33,
          ),
        ),
        const SizedBox(height: 4),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 13),
          decoration: const BoxDecoration(
            border: Border(
              bottom: BorderSide(
                color: Color(0xFFF3E8FF),
                width: 2,
              ),
            ),
          ),
          child: Text(
            hint,
            style: GoogleFonts.plusJakartaSans(
              fontSize: 16,
              color: const Color(0x664B444F),
            ),
          ),
        ),
      ],
    );
  }
}
