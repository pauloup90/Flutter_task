
import 'package:flutter/material.dart';
import '../../core/color.dart';
import '../view/home_screen.dart';
import '../widgets/custombotton.dart';
import '../widgets/verification.dart';

class Verification2  extends StatefulWidget {
  const Verification2({Key? key}) : super(key: key);

  @override
  State<Verification2> createState() => _VerificationState();
}

class _VerificationState extends State<Verification2> {

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          physics: const NeverScrollableScrollPhysics(),
          child: Container(
              decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      CustomColor.color1,
                      CustomColor.color3,
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  )),
              child: SafeArea(
                child:
                Column(
                    children: [
                      const SizedBox(
                        height: 40,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(30.0),
                        child: Center(
                          child: (Image.asset(
                            'assets/images/logo.png',
                            width: 184.32,
                            height: 60.14,
                          )),
                        ),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      Stack(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 33.0, bottom: 90),
                            child: Container(
                              width: 295,
                              height: 50,
                              decoration: BoxDecoration(
                                  color: const Color(0x1dffffff),
                                  borderRadius: BorderRadius.circular(35)),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 27.0, top: 10),
                            child: Container(
                              width: 310,
                              height: 50,
                              decoration: BoxDecoration(
                                  color: const Color(0x30ffffff),
                                  borderRadius: BorderRadius.circular(40)),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(21.0),
                            child: Form(
                                key: _formKey,
                                child: Container(
                                  width: 325,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(30),
                                      color: Colors.white),
                                  child: Column(
                                    children: [
                                      const SizedBox(
                                        height: 20,
                                      ),
                                      const Text(
                                        'Verification',
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black),
                                      ),
                                      const SizedBox(
                                        height: 40,
                                      ),
                                      const Text(
                                        'Enter Code Here',
                                        style: TextStyle(
                                            fontSize: 14,
                                            color: Colors.grey),
                                      ),
                                      const SizedBox(
                                        height: 20,
                                      ),
                                      const Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Verification(),
                                          Verification(),
                                          Verification(),
                                          Verification(),
                                        ],
                                      ),
                                      const SizedBox(
                                        height: 20,
                                      ),
                                      RichText(
                                        text: const TextSpan(children: [
                                          TextSpan(
                                              text: 'If you didn,t receive the code ? ',
                                              style: TextStyle(
                                                  color: Colors.black)),
                                          TextSpan(
                                              text: ' Resend',
                                              style: TextStyle(
                                                  color: CustomColor.color1)),
                                        ]),
                                      ),

                                      const SizedBox(
                                        height: 30,
                                      ),

                                      CustomButton(
                                        onTap: () {
                                        if(  _formKey.currentState!.validate()
                                        )
                                          return



                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                  const HomeScreen()),
                                            );
                                      }, text: 'Verify',)
                                    ],
                                  ),
                                )),
                          ),
                        ],
                      ),

                      const SizedBox(
                        height: 300,
                      ),
                    ]),
              )),
        ));
  }

}
