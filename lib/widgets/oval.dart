import 'package:flutter/material.dart';

class OvalClipper extends StatelessWidget {
  const OvalClipper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
        return const ClipOval(
          child: Image(image: AssetImage('./assets/pic.png'))
        );
  }
}