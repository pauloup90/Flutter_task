import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../widgets/bar.dart';
import '../widgets/colors_bottom_sheet.dart';
import '../widgets/coustom_botton.dart';
import '../widgets/description.dart';
import '../widgets/detils_descrep.dart';
import '../widgets/ditels_screen.dart';

class DetilsHome extends StatelessWidget {
  final image;
  final price;
  final description;
  final title;

  const DetilsHome(
      {super.key,
      required this.image,
      required this.price,
      required this.title,
      required this.description});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Stack(
            children: [
              Container(
                height: 350,
                width: double.infinity,
                color: Colors.white,
                child: Center(
                  child: InteractiveViewer(
                    maxScale: 2.5,

                  minScale: 1,  child: DetilsScreen(
                      image: image,
                    ),
                  ),
                ),
              ),
              const AppBarDitels(),
            ],
          ),
          DetilsDescreb(
            price: price,
            title: title,
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            height: 200,
            width: double.infinity,
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              padding:EdgeInsets.all(12) ,
              child: Description(
                description: description,
              ),
            ),
          ),

    Spacer(),
           CustomBottom(
            price: price,
          ),
          const SizedBox(
            height: 30,
          ),
        ],
      ),
    ));
  }
}
