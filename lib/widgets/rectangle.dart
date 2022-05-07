import 'package:flutter/material.dart';

class RectangleClipper extends StatelessWidget {
  const RectangleClipper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
      return const  ClipRect(
          child: Align(
            alignment: Alignment.center,
            widthFactor: 0.8,
            heightFactor: 1.0,
            child: Image(
              image: AssetImage('./assets/pic.png')
            ),
        ),
      );
  }
}