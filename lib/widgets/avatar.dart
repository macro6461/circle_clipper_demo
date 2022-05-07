import 'package:flutter/material.dart';

class AvatarClipper extends StatelessWidget {
  const AvatarClipper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
        return const CircleAvatar(
          backgroundColor: Colors.amber,
          backgroundImage: AssetImage('./assets/pic.png'), 
          radius: 200.0,
        );
  }
}