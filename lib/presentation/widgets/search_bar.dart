import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../core/colors.dart';

class SearchBarWid extends StatelessWidget {
  const SearchBarWid({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Container(
            margin: const EdgeInsets.only(right: 10, left: 24),
            height: 50,
            width: 50,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: CustemColors.gray),
            child: IconButton(
              icon: Image(
                image: AssetImage('assets/icons/Rectangle 74.png'),
                height: 20,
                width: 20,
              ),
              onPressed: () {},
            )),
        SizedBox(
          height: 50,
          width: 290,
          child: Padding(
            padding: const EdgeInsets.only(right: 24.0),
            child: TextField(
              cursorColor: CustemColors.gray,
              decoration: InputDecoration(
                  fillColor: CustemColors.gray,
                  filled: true,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide.none),
                  hintText: 'Search',
                  hintStyle: TextStyle(color: Colors.grey, fontSize: 16),
                  prefixIcon: Icon(Icons.search)),
            ),
          ),
        ),
      ],
    );
  }
}
