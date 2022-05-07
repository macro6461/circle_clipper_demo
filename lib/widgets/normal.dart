import 'package:flutter/material.dart';

class Normal extends StatelessWidget {
  const Normal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Image(image: AssetImage('./assets/pic.png'));
  }
}