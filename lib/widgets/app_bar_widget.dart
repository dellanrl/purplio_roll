import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppBarWidget extends StatelessWidget {
  final String currentPage;
  
  const AppBarWidget({super.key, this.currentPage = 'Home'});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white.withValues(alpha: 0.7),
        border: const Border(
          bottom: BorderSide(
            color: Color(0x4CE9D5FF),
            width: 1,
          ),
        ),
      ),
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  const Icon(
                    Icons.bakery_dining,
                    color: Color(0xFF581C87),
                    size: 28,
                  ),
                  const SizedBox(width: 12),
                  Text(
                    'PURPLIO\nROLL',
                    style: GoogleFonts.spaceGrotesk(
                      fontSize: 20,
                      fontWeight: FontWeight.w900,
                      color: const Color(0xFF581C87),
                      height: 1.2,
                    ),
                  ),
                ],
              ),
              IconButton(
                icon: const Icon(Icons.menu),
                onPressed: () => _showMenu(context),
                color: const Color(0xFF581C87),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _showMenu(BuildContext context) {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.white,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (context) => SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            _buildMenuItem(context, 'Home', '/', currentPage == 'Home'),
            _buildMenuItem(context, 'Menu', '/menu', currentPage == 'Menu'),
            _buildMenuItem(context, 'Vision', '/vision', currentPage == 'Vision'),
            _buildMenuItem(context, 'Contact', '/contact', currentPage == 'Contact'),
            const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF341452),
                  minimumSize: const Size(double.infinity, 48),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24),
                  ),
                ),
                child: Text(
                  'ORDER NOW',
                  style: GoogleFonts.spaceGrotesk(
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                    letterSpacing: 1.6,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 24),
          ],
        ),
      ),
    );
  }

  Widget _buildMenuItem(BuildContext context, String title, String route, bool isActive) {
    return ListTile(
      title: Text(
        title,
        style: GoogleFonts.spaceGrotesk(
          fontSize: 16,
          fontWeight: FontWeight.w700,
          color: isActive ? const Color(0xFF7E22CE) : const Color(0x99581C87),
        ),
      ),
      trailing: isActive
          ? Container(
              width: 4,
              height: 24,
              decoration: BoxDecoration(
                color: const Color(0xFFFACC15),
                borderRadius: BorderRadius.circular(2),
              ),
            )
          : null,
      onTap: () {
        Navigator.pop(context);
        if (!isActive) {
          Navigator.pushNamed(context, route);
        }
      },
    );
  }
}
