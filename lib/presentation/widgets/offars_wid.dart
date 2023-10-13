import 'package:flutter/material.dart';
import 'package:mobile_and_laptop_store/presentation/view/home_screen.dart';

import 'gridview.dart';

class OffarsWid extends StatelessWidget {
  const OffarsWid({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: SafeArea(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const HomeScreen()));
                  },
                  child: const Padding(
                    padding: EdgeInsets.only(left: 20.0, top: 20),
                    child: Icon(Icons.arrow_back_sharp),
                  ),
                ),
                const Spacer(),
                const Padding(
                  padding: EdgeInsets.only(
                      left: 20.0, top: 20, bottom: 10, right: 20),
                  child: Text('BLACK FRIDAY',
                      style: TextStyle(color: Colors.black, fontSize: 17)),
                ),
              ],
            ),
            const GridViewItems(),
          ],
        ),
      ),
    ));
  }
}
