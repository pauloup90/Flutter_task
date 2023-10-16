// ignore_for_file: prefer_const_constructors

import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:mobile_and_laptop_store/presentation/login_screens/siginup.dart';
import 'package:mobile_and_laptop_store/presentation/login_screens/verification.dart';

import '../../core/color.dart';
import '../widgets/custombotton.dart';
import '../widgets/formfield.dart';


class ForgotPassword extends StatefulWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
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
            child: Column(children: [
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
                                'Forgot Password ?',
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              ),
                              const SizedBox(
                                height: 40,
                              ),
                              Forms(
                                titel: 'Enter Email Address',
                                validator: "Enter Valid Email", controller: '',
                              ),
                              TextButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const Signup()));
                                },
                                child: RichText(
                                  text: const TextSpan(children: [
                                    TextSpan(
                                        text: 'Don,t have an account ?',
                                        style: TextStyle(color: Colors.black)),
                                    TextSpan(
                                        text: ' Register Now',
                                        style: TextStyle(
                                            color: CustomColor.color1)),
                                  ]),
                                ),
                              ),
                              const SizedBox(
                                height: 30,
                              ),
                              CustomButton(
                                onTap: () {
                                  if (_formKey.currentState!.validate())
                                    return Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const Verification2()),
                                    );
                                },
                                text: 'Forgot',
                              )
                            ],
                          ),
                        )),
                  ),
                ],
              ),
              const SizedBox(
                height: 220,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Having Trouble ? ',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Verification2()));
                    },
                    child: Text(' Get Help',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                        )),
                  )
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
