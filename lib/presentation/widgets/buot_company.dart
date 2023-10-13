import 'package:flutter/material.dart';
import 'package:mobile_and_laptop_store/presentation/view/home_screen.dart';
import 'package:mobile_and_laptop_store/presentation/widgets/gridview.dart';

import '../../core/styles.dart';

class AboutCompany extends StatelessWidget {
  const AboutCompany({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 5,
        child: SafeArea(
          child: Scaffold(
            body: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
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
                  const Center(
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 40,
                      child: Image(
                        image: AssetImage('assets/images/Ellipse 135.png'),
                      ),
                    ),
                  ),
                  const Center(
                    child: Text('xcite', style: Styles.Medium),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 15, left: 30.0, right: 15),
                    child: Center(
                        child: Text(
                      'The 8Q Store application is an exhibition for companies to book or buy products through companies and stores in the State of Kuwait',
                      textAlign: TextAlign.center,
                    )),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0, top: 20),
                    child: Text(' Follow us',
                        style: Styles.Smoll..copyWith(fontSize: 16)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 20.0,
                      right: 20,
                      top: 20,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        CircleAvatar(
                          radius: 22,
                          child: Image.asset('assets/icons/Facebook.png'),
                        ),
                        CircleAvatar(
                          radius: 22,
                          child: Image.asset('assets/icons/Instagram.png'),
                        ),
                        CircleAvatar(
                          radius: 22,
                          child: Image.asset('assets/icons/Twitter.png'),
                        ),
                        CircleAvatar(
                          radius: 22,
                          child: Image.asset('assets/icons/Whatsapp.png'),
                        ),
                        CircleAvatar(
                          radius: 22,
                          child: Image.asset('assets/icons/Pinterest.png'),
                        ),
                      ],
                    ),
                  ),
                  const Padding(
                    padding:
                        EdgeInsets.only(left: 20.0, top: 20, bottom: 10),
                    child: Text(' products', style: Styles.Smoll),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const TabBar(
                    indicatorWeight: 1,
                    indicatorColor: Colors.white,
                    enableFeedback: false,
                    dividerColor: Colors.black,
                    labelColor: Colors.black,
                    automaticIndicatorColorAdjustment: false,
                    unselectedLabelColor: Colors.grey,
                    tabs: [
                      Text('All', style: Styles.meni),
                      Text('Mobile', style: Styles.meni),
                      Text('Laptop', style: Styles.meni),
                      Text('Watch', style: Styles.meni),
                      Text('Camera', style: Styles.meni),
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const GridViewItems(),
                ],
              ),
            ),
          ),
        ));
  }
}
