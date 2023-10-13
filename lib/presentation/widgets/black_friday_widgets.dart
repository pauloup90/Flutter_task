import 'package:flutter/material.dart';

class BlackFriday extends StatelessWidget {
  const BlackFriday({super.key, required this.token});
  final String token;
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 350,
        height: 150,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/البلاك فرايداي.png'))));
  }
}
