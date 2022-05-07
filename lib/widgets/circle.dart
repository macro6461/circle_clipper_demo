import 'package:flutter/material.dart';

class CircleClipper extends StatelessWidget {
  const CircleClipper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(300.0),
      child: const Image(image: AssetImage('./assets/pic.png')),
    );
  }
}