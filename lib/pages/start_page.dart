import 'package:bmi_app_v1/pages/home_page.dart';

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class StartPage extends StatefulWidget {
  const StartPage({super.key});

  @override
  State<StartPage> createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff9188f1),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 20),
            SizedBox(
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.all(50),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(150),
                  child: Image.asset(
                    "assets/start.jpg",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            // const Spacer(),
            Container(
              width: double.infinity,
              // height: 439,
              padding: const EdgeInsets.symmetric(vertical: 22, horizontal: 24),
              margin: const EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(40),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 8),
                  const Text(
                    "Track your health\nfor a healthy life.",
                    style: TextStyle(fontWeight: FontWeight.w900, fontSize: 28),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    "Calculate your Body Mass Index (BMI).",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(height: 24),
                  SizedBox(
                    width: double.infinity,
                    height: 60,
                    child: ElevatedButton(
                      onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomePage(),
                        ),
                      ),
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.black),
                      ),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
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
                            color: Color(0xff9188f1),
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 12),
                  InkWell(
                    onTap: _launchUrl,
                    child: Padding(
                      padding: EdgeInsets.all(3),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Developed by ',
                            style: TextStyle(
                              fontSize: 12,
                            ),
                          ),
                          Text(
                            'Narges Yaghoutifarid',
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.blue,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

Future<void> _launchUrl() async {
    if (!await launchUrl(
        Uri.parse('https://www.linkedin.com/in/narges-yaghouti/'))) {
      throw Exception('Could not launch ');
    }
  }
}
