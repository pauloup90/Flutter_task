import 'package:flutter/material.dart';

import '../../core/styles.dart';
import '../widgets/favorite_list.dart';

class Lieks extends StatelessWidget {
  const Lieks({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {


    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children:[
        SafeArea(
          child: Padding(
            padding: EdgeInsets.only(top: 10.0, left: 20,),
            child: Text(
              'Favorite',
              style: Styles.Smoll,
            ),
          ),
        ),
        Expanded(child: Favorite())
      ],
    );
  }
}
