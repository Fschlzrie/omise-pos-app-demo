import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class HeaderJudul extends StatelessWidget implements PreferredSizeWidget {
  final String title;

  const HeaderJudul({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: Size.fromHeight(120), // tinggi AppBar
      child: AppBar(
        automaticallyImplyLeading: false, // agar kita atur sendiri tombol back
        backgroundColor: const Color.fromARGB(255, 2, 8, 20),
        elevation: 0,
        flexibleSpace: SafeArea(
          child: Container(
            height: 120,
            alignment: Alignment.center,
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center, // center vertical
              children: [
                IconButton(
                  icon: Icon(Icons.arrow_back, color: Colors.white),
                  onPressed: () {
                    Get.back();
                  },
                ),
                Expanded(
                  child: Text(
                    title,
                    style: GoogleFonts.montserrat(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                SizedBox(width: 48), // agar seimbang kanan (biar icon back tidak geser)
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(120);
}
