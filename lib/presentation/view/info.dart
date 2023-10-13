import 'package:flutter/material.dart';
import 'package:mobile_and_laptop_store/core/styles.dart';

class Info extends StatelessWidget {
  const Info({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SingleChildScrollView(
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        const Padding(
          padding: EdgeInsets.only(top: 40.0, left: 20, bottom: 30),
          child: Text(
            'About',
            style: Styles.Smoll,
          ),
        ),
        Center(
          child: Image.asset(
            'assets/images/splash.png',
            fit: BoxFit.fill,
            height: 70,
            width: 60,
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        const Padding(
          padding: EdgeInsets.only(top: 20, left: 20.0, right: 20),
          child: Center(
              child: Text(
                  'The 8Q Store application is an exhibition for companies to book or buy products through companies and stores in the State of Kuwait')),
        ),
        const Padding(
          padding: EdgeInsets.only(top: 40.0, left: 20),
          child: Text(
            'Social Media',
            style: Styles.Smoll,
          ),
        ),
        Padding(
          padding:
              const EdgeInsets.only(left: 20.0, right: 20, top: 36, bottom: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CircleAvatar(
                radius: 22,
                child: Image.asset('assets/icons/Facebook.png'),
              ),
              CircleAvatar(
                radius: 22,
                child: Image.asset('assets/icons/Instagram.png'),
              ),
              CircleAvatar(
                radius: 22,
                child: Image.asset('assets/icons/Twitter.png'),
              ),
              CircleAvatar(
                radius: 22,
                child: Image.asset('assets/icons/Whatsapp.png'),
              ),
              CircleAvatar(
                radius: 22,
                child: Image.asset('assets/icons/Pinterest.png'),
              ),
            ],
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(top: 40, left: 20),
          child: Text(
            'Complaints Or Suggestions',
            style: Styles.Smoll,
          ),
        ),
        Container(
          margin: const EdgeInsets.only(left: 20, right: 20, top: 20),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border: Border.all(width: 0.5, color: Colors.grey)),
          alignment: Alignment.center,
          padding: const EdgeInsets.all(20),
          child: const Column(
            children: [
              TextField(
                keyboardType: TextInputType.multiline,
                maxLines: 4,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Add Complaints Or Suggestions",
                ),
              ),
            ],
          ),
        ),
        Center(
          child: Container(
            margin: EdgeInsets.only(top: 30),
            height: 50,
            width: 330,
            decoration: BoxDecoration(
                color: Colors.black, borderRadius: BorderRadius.circular(12)),
            child: GestureDetector(
                onTap: () {},
                child: const Center(
                    child: Text(
                  'Send',
                  style: TextStyle(color: Colors.white),
                ))),
          ),
        ),
      ]),
    )));
  }
}
