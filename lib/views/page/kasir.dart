import 'package:flutter/material.dart';
import 'package:omise_app/views/widgets/header_judul.dart';

class Kasir extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HeaderJudul(title: 'Daftar Kasir'),
      body: Center(
        child: Text('Isi konten halaman di sini'),
      ),
    );
  }
}
