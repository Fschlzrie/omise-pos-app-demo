import 'package:flutter/material.dart';
import 'package:omise_app/views/widgets/header.dart';

class MainLayout extends StatelessWidget {
  final Widget child;

  MainLayout({required this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Header(),
          Expanded(child: child),
        ],
      ),
    );
  }
}
