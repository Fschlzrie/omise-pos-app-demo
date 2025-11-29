import 'package:flutter/material.dart';
import 'package:omise_app/views/layouts/main_layout.dart';
import 'package:omise_app/views/widgets/statistik_section.dart';

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MainLayout(
      child: BodySection(title: "Laporan Hari ini")
    );
  }
}
