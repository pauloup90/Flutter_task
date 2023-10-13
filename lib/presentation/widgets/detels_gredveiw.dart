import 'package:flutter/material.dart';
import 'package:mobile_and_laptop_store/core/colors.dart';

import '../../core/styles.dart';

class DetailsGredveiw extends StatelessWidget {


  const DetailsGredveiw({super.key, required this.title ,required this.price});
  final  title;
  final price;
  @override
  Widget build(BuildContext context) {
    return  Container(

      decoration: BoxDecoration(
        color: CustemColors.gray,
        borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(20),
            bottomRight: Radius.circular(20),
            ),
        border: Border.all(
          color: CustemColors.gray,
          width: 1,
        ),
      ),
      height: 120,
      width: 160,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          Padding(
            padding: const EdgeInsets.only(right: 8.0,left: 30),
            child: Text(title,style: Styles.meni.copyWith(
              fontWeight: FontWeight.w700,
              fontSize: 13,

            ),maxLines: 2,
            overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.end,),
          ),
          const SizedBox(
            height: 9,
          ),
       Row(
         mainAxisAlignment: MainAxisAlignment.end,
         children: [
           Text('(شركة اكسايت)',style: Styles.meni.copyWith(
               fontWeight: FontWeight.w700,
               color: const Color(0xff969191),
               fontSize: 9
           ),),

      const SizedBox(
             width: 5,
           ),
           const CircleAvatar(
             radius: 13,
             child: Image(image: AssetImage('assets/images/Ellipse 135.png'),),
           ),

           const SizedBox(
             width: 15,
           ),
         ],
       ),
          const SizedBox(
            height: 9,
          ),

          Row(
         mainAxisAlignment: MainAxisAlignment.end,
         children: [
           Text('EGP' ,style: Styles.meni.copyWith(
               fontWeight: FontWeight.w700,
               color: Colors.black,
               fontSize: 14
           ),),
           const SizedBox(
             width: 3,
           ),
           Text(price ,style: Styles.meni.copyWith(
               fontWeight: FontWeight.w700,
               color: Colors.black,
               fontSize: 14
           ),),

           const SizedBox(
             width: 15,
           ),

         ],
       ),
        ],
      ),
    );
  }
}
