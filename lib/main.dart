import 'package:flutter/material.dart';
import 'package:ugrab/pages/landingpage.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: MaterialApp(
        home: LandingPage(),
      ),
    );
  }
}
