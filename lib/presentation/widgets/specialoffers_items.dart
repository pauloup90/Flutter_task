import 'package:flutter/material.dart';
import 'package:mobile_and_laptop_store/core/styles.dart';
import '../../core/colors.dart';

class SpecialOffersItems extends StatelessWidget {
  const SpecialOffersItems(
      {super.key,
      required this.image,
      required this.title,
      required this.price});

  final String image;
  final String title;
  final String price;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0, right: 8),
      child: Container(
        width: 240,
        decoration: BoxDecoration(
          border: Border.all(
            color: CustemColors.gray,
            width: 1,
          ),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Center(
                    child: Image.network(
                  image,
                  height: 100,
                  width: 70,
                )),
                const SizedBox(
                  height: 9,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 10.0, top: 10),
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width * .4,
                        child: Text(
                          title,
                          textAlign: TextAlign.end,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: Styles.meni.copyWith(
                              fontWeight: FontWeight.w700, fontSize: 13),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        const SizedBox(
                          width: 60,
                        ),
                        Text(
                          '(شركة اكسايت)',
                          style: Styles.meni.copyWith(
                              fontWeight: FontWeight.w700,
                              color: const Color(0xff969191),
                              fontSize: 9),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        const CircleAvatar(
                          radius: 13,
                          child: Image(
                            image: AssetImage('assets/images/Ellipse 135.png'),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        const SizedBox(
                          width: 60,
                        ),
                        Text(
                          'EGP',
                          style: Styles.meni.copyWith(
                              fontWeight: FontWeight.w700,
                              color: Colors.black,
                              fontSize: 13),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                          price,
                          style: Styles.meni.copyWith(
                              fontWeight: FontWeight.w700,
                              color: Colors.black,
                              fontSize: 13),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
