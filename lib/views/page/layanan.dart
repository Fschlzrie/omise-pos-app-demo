import 'package:flutter/material.dart';
import 'package:omise_app/views/widgets/header_judul.dart';

class Layanan extends StatelessWidget {
  final List<Map<String, dynamic>> dataLayanan = [
    {
      'nama': 'Cuci Mobil',
      'gambar': 'lib/data/images/menu1.jpeg',
      'jenis': [
        {'nama': 'Eksterior', 'harga': 'Rp 50.000'},
        {'nama': 'Interior', 'harga': 'Rp 60.000'},
        {'nama': 'Lengkap', 'harga': 'Rp 100.000'},
      ]
    },
    {
      'nama': 'Servis Motor',
      'gambar': 'lib/data/images/menu2.jpeg',
      'jenis': [
        {'nama': 'Ganti Oli', 'harga': 'Rp 30.000'},
        {'nama': 'Tune Up', 'harga': 'Rp 45.000'},
        {'nama': 'Servis Rutin', 'harga': 'Rp 70.000'},
      ]
    },
    {
      'nama': 'Salon Kendaraan',
      'gambar': 'lib/data/images/menu3.jpeg',
      'jenis': [
        {'nama': 'Detailing', 'harga': 'Rp 120.000'},
        {'nama': 'Coating', 'harga': 'Rp 150.000'},
        {'nama': 'Poles Body', 'harga': 'Rp 90.000'},
      ]
    },
    {
      'nama': 'Salon Kendaraan',
      'gambar': 'lib/data/images/menu3.jpeg',
      'jenis': [
        {'nama': 'Detailing', 'harga': 'Rp 120.000'},
        {'nama': 'Coating', 'harga': 'Rp 150.000'},
        {'nama': 'Poles Body', 'harga': 'Rp 90.000'},
      ]
    },
    {
      'nama': 'Salon Kendaraan',
      'gambar': 'lib/data/images/menu3.jpeg',
      'jenis': [
        {'nama': 'Detailing', 'harga': 'Rp 120.000'},
        {'nama': 'Coating', 'harga': 'Rp 150.000'},
        {'nama': 'Poles Body', 'harga': 'Rp 90.000'},
      ]
    },
    {
      'nama': 'Salon Kendaraan',
      'gambar': 'lib/data/images/menu3.jpeg',
      'jenis': [
        {'nama': 'Detailing', 'harga': 'Rp 120.000'},
        {'nama': 'Coating', 'harga': 'Rp 150.000'},
        {'nama': 'Poles Body', 'harga': 'Rp 90.000'},
      ]
    },
    {
      'nama': 'Salon Kendaraan',
      'gambar': 'lib/data/images/menu3.jpeg',
      'jenis': [
        {'nama': 'Detailing', 'harga': 'Rp 120.000'},
        {'nama': 'Coating', 'harga': 'Rp 150.000'},
        {'nama': 'Poles Body', 'harga': 'Rp 90.000'},
      ]
    },
    {
      'nama': 'Salon Kendaraan',
      'gambar': 'lib/data/images/menu3.jpeg',
      'jenis': [
        {'nama': 'Detailing', 'harga': 'Rp 120.000'},
        {'nama': 'Coating', 'harga': 'Rp 150.000'},
        {'nama': 'Poles Body', 'harga': 'Rp 90.000'},
      ]
    },
    {
      'nama': 'Salon Kendaraan',
      'gambar': 'lib/data/images/menu3.jpeg',
      'jenis': [
        {'nama': 'Detailing', 'harga': 'Rp 120.000'},
        {'nama': 'Coating', 'harga': 'Rp 150.000'},
        {'nama': 'Poles Body', 'harga': 'Rp 90.000'},
      ]
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HeaderJudul(title: 'Kelola Layanan'),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(horizontal: 16),
                      hintText: 'Cari layanan...',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      prefixIcon: Icon(Icons.search),
                    ),
                  ),
                ),
                const SizedBox(width: 12),
                InkWell(
                  onTap: () {
                    print('Klik sortir');
                  },
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Icon(Icons.sort, color: Colors.black87),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            Expanded(
              child: ListView.builder(
                itemCount: dataLayanan.length,
                itemBuilder: (context, index) {
                  final layanan = dataLayanan[index];
                  return Card(
                    margin: const EdgeInsets.only(bottom: 12),
                    child: Padding(
                      padding: const EdgeInsets.all(12),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: Image.asset(
                              layanan['gambar'],
                              width: 80,
                              height: 80,
                              fit: BoxFit.cover,
                            ),
                          ),
                          const SizedBox(width: 12),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Expanded(
                                      child: Text(
                                        layanan['nama'],
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                    IconButton(
                                      icon: Icon(Icons.delete, color: Colors.red),
                                      onPressed: () {
                                        print('Hapus ${layanan['nama']}');
                                      },
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 6),
                                ...layanan['jenis'].map<Widget>((item) {
                                  return Padding(
                                    padding: const EdgeInsets.only(bottom: 4),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(item['nama']),
                                        Text(
                                          item['harga'],
                                          style: TextStyle(fontWeight: FontWeight.w500),
                                        ),
                                      ],
                                    ),
                                  );
                                }).toList(),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),

            // Tambahkan tombol di bawah kanan layar
      floatingActionButton: Container(
        width: double.infinity, // biar bisa diatur ke tengah
        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 10), // atur jarak dari tepi layar
        child: SizedBox(
          height: 50, // atur tinggi button
          child: FloatingActionButton.extended(
            onPressed: () {
              print('Tambah layanan diklik');
            },
            label: Text('Tambah Layanan', style: TextStyle(fontSize: 16,color: Colors.black,fontWeight: FontWeight.bold)),
            icon: Icon(Icons.add, color: Colors.black,),
            backgroundColor: Colors.yellowAccent,
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat, // agar di tengah bawah

    );

  }
}
