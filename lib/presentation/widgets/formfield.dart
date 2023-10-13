import 'package:flutter/material.dart';

import '../../core/color.dart';

class Forms extends StatelessWidget {
  const Forms({super.key,required this.titel,required this.validator});
 final titel;
 final validator;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
          left: 20.0, right: 20),
      child: TextFormField(
        style: const TextStyle(
          fontSize: 12,
          color: CustomColor.gry,
        ),
        keyboardType:
        TextInputType.emailAddress,
        decoration:  InputDecoration(
            hintText: titel,

        ),
        validator: (value) {
          if (value == null ||
              value.isEmpty ) {
            return validator;
          }
          return null;
        },

      ),
    );
  }
}
