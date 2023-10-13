import 'package:flutter/material.dart';

import '../../core/colors.dart';
import '../../core/styles.dart';

class DeletList extends StatelessWidget {
  const DeletList(
      {super.key,
      required this.image,
      required this.title,
      required this.price});

  final String image;
  final String title;
  final String price;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(bottom: 10, left: 10, right: 10),
        child: Container(
          height: 140,
          decoration: BoxDecoration(
            border: Border.all(
              color: CustemColors.gray,
              width: 1,
            ),
            borderRadius: BorderRadius.circular(15),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const SizedBox(
                width: 25,
              ),
              Center(
                  child: Image.network(
                    image,
                    height: 100,
                    width: 80,
                  )),
              Spacer(),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const SizedBox(
                    width: 20,
                  ),
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
                  const SizedBox(
                    width: 20,
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
                        radius: 15,
                        child: Image(
                          image:
                          AssetImage('assets/images/Ellipse 135.png'),
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
                  const SizedBox(
                    height: 10,
                  ),
                ],
              ),
              const SizedBox(
                width: 20,
              ),
            ],
          ),
        ),
      ),
    );



  }
}
