import 'package:flutter/material.dart';

class Splashscreen extends StatelessWidget {
  const Splashscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Image.asset("assets/splashscreen.png")),
          const CircularProgressIndicator(
            strokeWidth: 2,
          )
        ],
      ),
    );
  }
}
