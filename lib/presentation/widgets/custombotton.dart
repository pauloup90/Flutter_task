import 'package:flutter/material.dart';

import '../../core/color.dart';
class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.text,required this.onTap, });
   final  text ;
  final Function ()? onTap;
  @override
  Widget build(BuildContext context) {
    return  SizedBox(
        child:
            GestureDetector(
              onTap: onTap,
             child: Container(
            margin: const EdgeInsets.only(bottom: 40),
            width: 270,
            decoration: BoxDecoration(
              color: CustomColor.color1,
              borderRadius:
              BorderRadius.circular(30),
            ),
            child: Row(
              mainAxisAlignment:
              MainAxisAlignment.end,
              children: [
                 Text(
                  text,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.white),
                ),
                const SizedBox(
                  width: 66,
                ),
                Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                        color:
                        CustomColor.icon,
                        borderRadius:
                        BorderRadius
                            .circular(30)),
                    child: const Icon(
                        Icons.arrow_forward,
                        color: Colors.white))
              ],
            ),
          ),
        ));
  }
}
