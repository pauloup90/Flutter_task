// ignore_for_file: non_constant_identifier_names

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';

import '../../core/color.dart';
import '../view/home_screen.dart';
import '../widgets/custombotton.dart';
import '../widgets/formfield.dart';
import 'login.dart';

class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  String email = "";
  String password = "";
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final nameController = TextEditingController();
  bool isPassword = true;
  bool isLoading = false;
  final _formKey = GlobalKey<FormState>();

  bool value = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(

            child: Container(
                decoration: const BoxDecoration(
                    gradient: LinearGradient(
                  colors: [
                    CustomColor.color1,
                    CustomColor.color2,
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                )),
                child: SafeArea(
                  child: Column(children: [

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
                    Stack(
                      children: [
                        Padding(
                          padding:
                              const EdgeInsets.only(left: 33.0, bottom: 90),
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
                                      'Sign In',
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black),
                                    ),
                                    const SizedBox(
                                      height: 20,
                                    ),
                                    Forms(
                                      titel: 'Name',
                                      validator: "Enter Valid Name",
                                    ),

                                    const SizedBox(
                                      height: 20,
                                    ),
                                    Forms(
                                      titel: 'Email',
                                      validator: "Enter Valid Email",
                                    ),
                                    const SizedBox(
                                      height: 20,
                                    ),
                                    Forms(
                                      titel: 'Password',
                                      validator: "Enter Valid Password",
                                    ),
                                    const SizedBox(
                                      height: 20,
                                    ),

                                    Forms(
                                      titel: 'Phone Number',
                                      validator: "Enter Valid Phone Number",
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Checkbox(
                                          value: value,
                                          onChanged: (value) {
                                            assert(value != null);
                                            setState(() {
                                              this.value = value!;
                                            });
                                          },
                                        ), //
                                        RichText(
                                          text: const TextSpan(children: [
                                            TextSpan(
                                                text: 'I agree the ',
                                                style: TextStyle(
                                                    color: Colors.black)),
                                            TextSpan(
                                                text: 'Terms & Conditions',
                                                style: TextStyle(
                                                    color: CustomColor.color1)),
                                          ]),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 20,
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
                                      },
                                      text: 'Sign in',
                                    ),
                                  ],
                                ),
                              )),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Already have an account?',
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
                                  builder: (context) => const Log()),
                            );
                          },
                          child: Text(' Login',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                              )),
                        )
                      ],
                    ),
                    const SizedBox(
                      height:120,
                    ),
                  ]),
                ))));
  }

  Future signUp() async {
    setState(() {
      isLoading = true;
    });

    Response registerResponse =
        await post(Uri.parse("http://alcaptin.com/api/register"), body: {
      "email": emailController.text,
      "password": passwordController.text,
      "first_name": nameController.text,
      "last_name": "khalid",
      "age": "21",
      "gender": "male",
    });

    dynamic convertedJson = jsonDecode(registerResponse.body);

    if (registerResponse.statusCode == 200) {
      if (!mounted) return;
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (_) => HomeScreen(
              // token: user.data!.accessToken,
              ),
        ),
      );
    } else {
      print(convertedJson["message"]);
    }

    setState(() {
      isLoading = false;
    });
  }
}
