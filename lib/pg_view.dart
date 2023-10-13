import 'package:flutter/material.dart';
import 'package:mobile_and_laptop_store/presentation/view/home_screen.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';


class PgViewModel2 {
  final String image;
  final String title;

  PgViewModel2({required this.image, required this.title});
}

class PgView extends StatefulWidget {
  const PgView({super.key});

  @override
  State<PgView> createState() => _PgViewState();
}

class _PgViewState extends State<PgView> {
  var controller = PageController();

  List<PgViewModel2> count = [
    PgViewModel2(
      image: 'assets/images/Rectangle 289.png',
      title: 'Onlin Shopping',
    ),
    PgViewModel2(
      image: 'assets/images/Rectangle 289-1.png',
      title: 'Offers and Discounts',
    ),
    PgViewModel2(
      image: 'assets/images/Rectangle 289-2.png',
      title: 'Secure Payment',
    ),
  ];
  bool isLast = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              physics: const BouncingScrollPhysics(),
              onPageChanged: (int index) {
                if (index == count.length - 1) {
                  setState(() {
                    isLast = true;
                  });
                } else {
                  setState(() {
                    isLast = false;
                  });
                }
              },
              controller: controller,
              itemBuilder: (context, index) => buildItem(count[index]),
              itemCount: count.length,
            ),
          ),
        ],
      ),
    );
  }

  Widget buildItem(PgViewModel2 model) => Stack(
        children: [
          Image.asset(
            model.image,
            fit: BoxFit.fill,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const HomeScreen(),
                    ),
                    (route) {
                      return false;
                    },
                  );
                },
                child: Container(
                  margin: const EdgeInsets.only(top: 40, right: 20),
                  height: 35,
                  width: 78,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: const Color(0x5e08101f)),
                  child: const Center(
                    child: Text(
                      'Skip',
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w300,
                          color: Colors.white),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                height: 400,
                width: double.infinity,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    )),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 30,
                    ),
                    Center(
                      child: Image.asset(
                        'assets/images/splash.png',
                        height: 60,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        model.title,
                        style: const TextStyle(
                            fontWeight: FontWeight.w700, fontSize: 20),
                      ),
                    ),
                    const Center(
                        child: Padding(
                      padding: EdgeInsets.all(15.0),
                      child: Text(
                        'The 8Q Store application is an exhibition for companies to book or buy products through companies and stores in the State of Kuwait ',
                        style: TextStyle(fontSize: 16),
                        textAlign: TextAlign.center,
                      ),
                    )),
                    const SizedBox(
                      height: 50,
                    ),
                    SmoothPageIndicator(
                      controller: controller,
                      count: count.length,
                      effect: const ExpandingDotsEffect(
                          dotColor: Colors.grey,
                          activeDotColor: Colors.black,
                          dotHeight: 6,
                          dotWidth: 8,
                          spacing: 5,
                          expansionFactor: 4),
                    ),
                    Stack(children: [
                      SizedBox(
                        height: 100,
                        child: FloatingActionButton(
                          elevation: 30,
                          backgroundColor: Colors.black,
                          onPressed: () {
                            if (isLast) {
                              Navigator.pushAndRemoveUntil(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const HomeScreen(),
                                ),
                                (route) {
                                  return false;
                                },
                              );
                            } else {
                              controller.nextPage(
                                  duration: const Duration(microseconds: 700),
                                  curve: Curves.fastOutSlowIn);
                            }
                          },
                          child: const Icon(
                            Icons.arrow_forward_ios_rounded,
                            size: 22,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ]),
                  ],
                ),
              ),
            ],
          ),
        ],
      );
}
