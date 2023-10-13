import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';
import 'package:mobile_and_laptop_store/core/colors.dart';

import 'detels_gredveiw.dart';

class ItemsSecAll extends StatelessWidget {
  const ItemsSecAll(
      {super.key, required this.image, required this.title, required this.price});

  final String image;
  final String title;
  final String price;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            height: 150,
            width: 160,

            decoration: BoxDecoration(
              border: Border.all(
                color: CustemColors.gray,
                width: 1,
              ),
              color: Colors.white,
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(20), topRight: Radius.circular(20)),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                Padding(
                  padding: EdgeInsets.only(
                      left: 110.0, right: 15, bottom: 6, top: 9),

                  child: LikeButton(
                    circleColor: CircleColor(
                        start: Colors.black, end: Colors.black),
                    size: 22,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 10),
                  height: 100,
                  width: 100,
                  child: ClipRRect(
                    child: Image.network(
                      image,

                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: DetailsGredveiw(

              title: title,
              price: price,
            ),
          ),
        ],
      ),
    );
  }
}
