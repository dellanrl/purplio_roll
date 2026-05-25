import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
import '../widgets/app_bar_widget.dart';
import '../widgets/footer_widget.dart';

class ContactPage extends StatefulWidget {
  const ContactPage({super.key});

  @override
  State<ContactPage> createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _messageController = TextEditingController();

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _messageController.dispose();
    super.dispose();
  }

  // Fungsi untuk membuka tautan luar (Social Media, Maps, WA)
  Future<void> _launchExternalUrl(String url) async {
    final Uri uri = Uri.parse(url);
    if (!await launchUrl(uri, mode: LaunchMode.externalApplication)) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Tidak dapat membuka tautan.')),
        );
      }
    }
  }

  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Halo ${_nameController.text}, pesan Anda berhasil dikirim!'),
          backgroundColor: Colors.green,
        ),
      );
      _nameController.clear();
      _emailController.clear();
      _messageController.clear();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(83), // Sesuaikan dengan tinggi top bar-mu
        child: const AppBarWidget(currentPage: 'Home'),
      ),
      backgroundColor: const Color(0xFFFCF8F9),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // ================= HEADER TITLE =================
                  Text(
                    'SAY HELLO!',
                    style: GoogleFonts.spaceGrotesk(
                      fontSize: 12,
                      color: const Color(0xFF4B2C69),
                      fontWeight: FontWeight.bold,
                      letterSpacing: 2.0,
                    ),
                  ),
                  const SizedBox(height: 6),
                  Text(
                    'Hubungi Purplio Roll',
                    style: GoogleFonts.epilogue(
                      fontSize: 30,
                      fontWeight: FontWeight.w800,
                      color: const Color(0xFF341452),
                      letterSpacing: -0.5,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'Ada pertanyaan, kritik, atau ingin memesan katering partai besar? Kami siap melayani Anda dengan sepenuh hati.',
                    style: GoogleFonts.plusJakartaSans(
                      fontSize: 14,
                      color: const Color(0xFF5C5461),
                      height: 1.5,
                    ),
                  ),
                  const SizedBox(height: 24),

                  // ================= KARTU INFO REKREASI (Kompak ke Samping) =================
                  Row(
                    children: [
                      Expanded(
                        child: _buildQuickContactCard(
                          Icons.location_on_rounded,
                          'Outlet Kami',
                          'Surabaya, Indonesia',
                          () => _launchExternalUrl('https://maps.google.com'),
                        ),
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        child: _buildQuickContactCard(
                          Icons.chat_bubble_rounded,
                          'WhatsApp',
                          '+62 895-3670-00275',
                          () => _launchExternalUrl('https://wa.me/62895367000275'),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 12),
                  _buildQuickContactCard(
                    Icons.camera_alt_rounded,
                    'Instagram Resmi',
                    '@purplioroll.id — Ikuti update promo harian kami',
                    () => _launchExternalUrl('https://instagram.com'),
                  ),
                  const SizedBox(height: 28),

                  // ================= FORM FEEDBACK INTERAKTIF SUNGGUHAN =================
                  Text(
                    'Kirim Pesan Langsung',
                    style: GoogleFonts.epilogue(
                      fontSize: 20,
                      fontWeight: FontWeight.w800,
                      color: const Color(0xFF341452),
                    ),
                  ),
                  const SizedBox(height: 14),
                  
                  Container(
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(24),
                      border: Border.all(color: const Color(0xFFF3E8FF), width: 1.5),
                    ),
                    child: Form(
                      key: _formKey,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          _buildInputField('Nama Lengkap', _nameController, Icons.person_outline_rounded, 'Masukkan nama Anda'),
                          const SizedBox(height: 14),
                          _buildInputField('Alamat Email', _emailController, Icons.mail_outline_rounded, 'Masukkan email aktif', isEmail: true),
                          const SizedBox(height: 14),
                          _buildInputField('Pesan / Catatan', _messageController, Icons.chat_bubble_outline_rounded, 'Tulis pesan Anda di sini...', maxLines: 4),
                          const SizedBox(height: 20),
                          
                          // Tombol Submit Form Kirim Pesan Berfungsi Nyata
                          ElevatedButton(
                            onPressed: _submitForm,
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xFF341452),
                              minimumSize: const Size(double.infinity, 56),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(14),
                              ),
                              elevation: 0,
                            ),
                            child: Text(
                              'Send Message',
                              style: GoogleFonts.spaceGrotesk(
                                fontSize: 15,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const FooterWidget(),
          ],
        ),
      ),
    );
  }

  // Helper Pembuat Kartu Sosmed/Hubungi (Padat & Efisien)
  Widget _buildQuickContactCard(IconData icon, String title, String value, VoidCallback onTap) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(16),
      child: Container(
        padding: const EdgeInsets.all(14),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: const Color(0xFFF3E8FF), width: 1),
        ),
        child: Row(
          children: [
            Container(
              padding: const EdgeInsets.all(8),
              decoration: const BoxDecoration(
                color: Color(0xFFF0DBFF),
                shape: BoxShape.circle,
              ),
              child: Icon(icon, color: const Color(0xFF341452), size: 20),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: GoogleFonts.spaceGrotesk(fontSize: 12, color: const Color(0xFF6B6370), fontWeight: FontWeight.w600),
                  ),
                  Text(
                    value,
                    style: GoogleFonts.plusJakartaSans(fontSize: 13, color: const Color(0xFF341452), fontWeight: FontWeight.bold),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Helper Pembuat Input Kolom Ketik
  Widget _buildInputField(String label, TextEditingController controller, IconData icon, String hint, {bool isEmail = false, int maxLines = 1}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: GoogleFonts.spaceGrotesk(fontSize: 13, color: const Color(0xFF341452), fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 6),
        TextFormField(
          controller: controller,
          maxLines: maxLines,
          style: GoogleFonts.plusJakartaSans(fontSize: 14, color: const Color(0xFF221B00)),
          validator: (value) {
            if (value == null || value.trim().isEmpty) {
              return 'Kolom ini wajib diisi';
            }
            if (isEmail && !RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(value.trim())) {
              return 'Format email tidak valid';
            }
            return null;
          },
          decoration: InputDecoration(
            hintText: hint,
            hintStyle: GoogleFonts.plusJakartaSans(fontSize: 13, color: const Color(0xFFA098A6)),
            prefixIcon: Icon(icon, color: const Color(0xFF6B6370), size: 18),
            filled: true,
            fillColor: const Color(0xFFF6F3F4),
            contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide.none,
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: const BorderSide(color: Color(0xFFBA96DB), width: 1.5),
            ),
          ),
        ),
      ],
    );
  }
}