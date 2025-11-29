import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BodySection extends StatelessWidget {
  final String title;

  const BodySection({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 2, 8, 20),
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(12),
                topRight: Radius.circular(12),
              ),
            ),
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Judul di tengah
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      title,
                      style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20,),
                Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: List.generate(2, (index){
                  final List<String> judul = [
                    'Omzet hari ini',
                    'Pelanggan',
                  ];
                  final List<String> value= [
                    '1800000M',
                    '1M',
                  ];
                    return Container(
                      width: 125,
                      height: 80,
                      child: Stack(
                        children: [
                          // Text value di tengah
                          Center(
                            child: FittedBox(
                              fit: BoxFit.contain,
                              child: Text(
                                value[index],
                                style: GoogleFonts.montserrat(
                                  fontSize: 42,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                          // Text judul di bawah
                          Positioned(
                            bottom: 4,
                            left: 0,
                            right: 0,
                            child: Center(
                              child: FittedBox(
                                fit: BoxFit.contain,
                                child: Text(
                                  judul[index],
                                  style: GoogleFonts.montserrat(
                                    fontSize: 14,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  }),
                ),
                SizedBox(
                  height: 8,
                ),
                Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: List.generate(2, (index){
                  final List<String> judul = [
                    'Staf',
                    'Kasir',
                  ];
                  final List<String> value= [
                    '32',
                    '192',
                  ];
                    return Container(
                      width: 125,
                      height: 80,
                      child: Stack(
                        children: [
                          // Text value di tengah
                          Center(
                            child: FittedBox(
                              fit: BoxFit.contain,
                              child: Text(
                                value[index],
                                style: GoogleFonts.montserrat(
                                  fontSize: 42,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                          // Text judul di bawah
                          Positioned(
                            bottom: 4,
                            left: 0,
                            right: 0,
                            child: Center(
                              child: FittedBox(
                                fit: BoxFit.contain,
                                child: Text(
                                  judul[index],
                                  style: GoogleFonts.montserrat(
                                    fontSize: 14,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                }),
               ),
              ],
            ),
          ),
        ),
        Container(
          width: double.infinity,
          decoration: const BoxDecoration(
            color: Color.fromARGB(255, 2, 8, 20),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: ElevatedButton(
              onPressed: () {
                print('tesaliva');
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.yellowAccent, // Warna tombol
                foregroundColor: Colors.black, // Warna teks
                padding: const EdgeInsets.symmetric(vertical: 14),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(6), // Tidak terlalu bulat
                ),
                elevation: 4,
                shadowColor: Colors.black,
              ),
              child: Text(
                'Transaksi',
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
