import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../view/home_screen.dart';

class AppBarDitels extends StatelessWidget {
  const AppBarDitels({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(onPressed: (){
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const HomeScreen()));
          }, icon: const Icon(Icons.arrow_back_sharp)),
          IconButton(onPressed: (){}, icon: const Icon(CupertinoIcons.search)),
        ],
      ),
    );
  }
}
