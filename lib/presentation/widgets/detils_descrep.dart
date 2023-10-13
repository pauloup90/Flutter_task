import 'package:flutter/material.dart';

import '../../core/colors.dart';
import '../../core/styles.dart';

class DetilsDescreb extends StatelessWidget {
  final price;
  final title;

  const DetilsDescreb({super.key, required this.price, required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 0.3,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.grey,
            borderRadius: BorderRadius.circular(30),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20.0, right: 30, bottom: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * .6,
                child: Text(
                  title,
                  textAlign: TextAlign.end,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: Styles.meni
                      .copyWith(fontWeight: FontWeight.w700, fontSize: 16),
                ),
              ),
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              width: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'EGP',
                  style: Styles.meni.copyWith(
                      fontWeight: FontWeight.w700,
                      color: Colors.black,
                      fontSize: 16),
                ),
                const SizedBox(
                  width: 3,
                ),
                Text(
                  price,
                  style: Styles.meni.copyWith(
                      fontWeight: FontWeight.w700,
                      color: Colors.black,
                      fontSize: 16),
                ),
                const SizedBox(
                  width: 15,
                ),
              ],
            ),
            const SizedBox(
              width: 15,
            ),
            const Spacer(),
            Text(
              'شركة اكسايت',
              style: Styles.meni
                  .copyWith(fontWeight: FontWeight.w700, fontSize: 15),
            ),
            const SizedBox(
              width: 10,
            ),
            const CircleAvatar(
              radius: 22,
              child: Image(
                image: AssetImage('assets/images/Ellipse 135.png'),
              ),
            ),
            const SizedBox(
              width: 15,
            ),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        const Row(
          children: [
            SizedBox(
              width: 20,
            ),
            Icon(
              Icons.star,
              color: CustemColors.vector,
            ),
            Icon(
              Icons.star,
              color: CustemColors.vector,
            ),
            Icon(
              Icons.star,
              color: CustemColors.vector,
            ),
            Icon(
              Icons.star,
              color: CustemColors.vector,
            ),
            Icon(
              Icons.star_border,
              color: Colors.grey,
            ),
          ],
        )
      ],
    );
  }
}
