import 'package:flutter/material.dart';

class Appbar extends StatelessWidget {
  const Appbar({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

         Image(
              height: 30,
              width: 30,
              image: AssetImage(
                'assets/images/logo.png',

            ),
          ),
        ],
      ),
    );
  }
}
