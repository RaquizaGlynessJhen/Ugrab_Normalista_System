import 'package:flutter/material.dart';
import 'package:ugrab/pages/postlandingpage.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const PostLandingPage()));
          },
          child: const Image(image: AssetImage('assets/imgs/landpage.png')),
        ),
      ),
    );
  }
}
