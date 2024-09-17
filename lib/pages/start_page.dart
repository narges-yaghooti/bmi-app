

import 'package:bmi_app_v1/pages/home-page.dart';

import 'package:flutter/material.dart';


class StartPage extends StatefulWidget {
  const StartPage({super.key});

  @override
  State<StartPage> createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff9188f1),
      body: Column(
        children: [
          const SizedBox(
            height: 60,
          ),
          Container(
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.all(40),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(150),
                child: Image.asset(
                  "assets/start.jpg",
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Spacer(),
          Container(
            width: double.infinity,
            // height: 439,
            padding: EdgeInsets.symmetric(vertical: 36, horizontal: 24),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(40),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Track your health\nfor a healthy life.",
                  style: TextStyle(fontWeight: FontWeight.w900, fontSize: 35),
                ),
                SizedBox(
                  height: 25,
                ),
                Text(
                  "Calculate your Body Mass Index (BMI) based\non the relevent information on body weight\nheigh, age and gender.",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 30,
                ),
                SizedBox(
                  width: double.infinity,
                  height: 60,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>  HomePage(),
                        ),
                      );
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children:  [
                        Text(
                          "Get Started",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(
                          Icons.arrow_right_alt_rounded,
                          size: 36,
                          color: const Color(0xff9188f1),
                        )
                      ],
                    ),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.black),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
