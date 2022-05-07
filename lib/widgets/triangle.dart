import 'package:flutter/material.dart';

class MyTriangle extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
      final path = Path();
      path.moveTo(size.width/2, 0.0);
      path.lineTo(size.width, size.height);
      path.lineTo(0.0, size.height);
      path.close();
      return path;
  }
  
  @override
  bool shouldReclip(MyTriangle oldClipper) => false;
}

class TriangleClipper extends StatelessWidget {
  const TriangleClipper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
        return ClipPath(
          clipper: MyTriangle(),
          child: const Image(image: AssetImage('./assets/pic.png')),
      );
  }
}