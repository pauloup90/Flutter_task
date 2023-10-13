import 'package:flutter/material.dart';

class DetilsScreen extends StatelessWidget {
  final image;

  const DetilsScreen({super.key,required this.image});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(
            height: 30,
          ),
          SizedBox(


              height: 270.0,
              child: Center(child: Image.network(image))
          ),
        ],
      ),
    );
  }
}
