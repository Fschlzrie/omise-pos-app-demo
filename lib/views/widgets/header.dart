  import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
  import 'package:google_fonts/google_fonts.dart';
import 'package:omise_app/views/page/kasir.dart';
import 'package:omise_app/views/page/laporan.dart';
import 'package:omise_app/views/page/layanan.dart';
import 'package:omise_app/views/page/pelanggan.dart';
import 'package:omise_app/views/page/riwayat.dart';
import 'package:omise_app/views/page/staff.dart';

  class Header extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
      return Stack(
        clipBehavior: Clip.none,
        children: [
          // Banner Merah
          Container(
            height: 250,
            width: double.infinity,
            color: Colors.white,
          ),

          // OMISE + Icon (posisi tetap)
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 130,
              width: double.infinity,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 2, 8, 20),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(12),
                  bottomRight: Radius.circular(12),
                )
              ),
              
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // Teks OMISE
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'OMISE',
                        style: GoogleFonts.montserrat(
                          fontSize: 24,
                          color: Colors.white,
                        ),
                      ),
                    ),

                    // Tombol Add & Menu
                   Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      // Kolom teks
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            'Halo Rie!',
                            style: TextStyle(fontSize: 14,color: Colors.white),
                          ),
                          Text(
                            'Selamat Datang Di OMISE',
                            style: TextStyle(fontSize: 8, color: Colors.white),
                          ),
                        ],
                      ),
                      const SizedBox(width: 8), // Spasi antar teks dan gambar
                      // Gambar bulat
                      GestureDetector(
                        onTap: () {
                          print('menu');
                        },
                        child: ClipOval(
                          child: Image.asset(
                            'lib/data/images/download.jpeg',
                            width: 40,
                            height: 40,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
                  )

                  ],
                ),
              ),
            ),
          ),

          // Menu Lingkaran dengan background hitam (berada di bawah OMISE)
          Positioned(
            top: 80,
            left: 0,
            right: 0,
            child: Container(
              height: 180,
              width: double.infinity,
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  children: List.generate(6, (index) {
                    // Gambar berbeda-beda (bisa diganti jadi AssetImage kalau pakai lokal)
                    final List<String> imageUrls = [
                      'lib/data/images/menu1.jpeg',
                      'lib/data/images/menu2.jpeg',
                      'lib/data/images/menu3.jpeg',
                      'lib/data/images/menu4.jpeg',
                      'lib/data/images/menu5.jpeg',
                      'lib/data/images/menu6.jpeg',
                    ];
                    final List<String> labels = [
                    'Layanan',
                    'Riwayat',
                    'Laporan',
                    'Pelanggan',
                    'Staf',
                    'Kasir',
                    ];
                    final List<Widget> link = [
                      Layanan(),
                      Riwayat(),
                      Laporan(),
                      Pelanggan(),
                      Staff(),
                      Kasir(),
                    ];
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: GestureDetector(
                        onTap: () {
                          Get.to(link[index],transition: Transition.rightToLeft,);
                        },
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Container(
                              width: 100,
                              height: 100,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.circle,
                              ),
                              padding: EdgeInsets.all(8),
                              child: ClipOval(
                                  child: Image.asset(
                                    imageUrls[index],
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              const SizedBox(height: 6,),
                              Text(
                                labels[index],
                                style: GoogleFonts.fredoka(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                  color: const Color.fromARGB(255, 2, 8, 20),
                                ),
                              )
                          ],
                        ),
                      ),
                    );
                  }),
                ),
              ),
            ),
          ),

        ],
      );
    }
  }
