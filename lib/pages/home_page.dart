import 'dart:math';

import 'package:bmi_app_v1/enums.dart';

import 'package:bmi_app_v1/widgets/container_size.dart';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    super.key,
  });

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int age = 18;
  int weight = 60;
  int height = 160;
  Gender selectedGender = Gender.none;
  double bmiResult = 0;

  void increaseAge() {
    if (age < 100) age++;
    setState(() {});
  }

  void decreaseAge() {
    age--;

    setState(() {});
  }

  void increaseWeight() {
    weight++;
    setState(() {});
  }

  void decreaseWeight() {
    if (weight > 20) weight--;
    setState(() {});
  }

  void increaseHeight() {
    if (height < 250) height++;
    setState(() {});
  }

  void decreaseHeight() {
    if (height > 110) height--;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        color: const Color(0xff9188f1).withOpacity(.075),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 70),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                "Your Information",
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.w800,
                  color: const Color(0xff9188f1),
                ),
              ),
            ),
            const SizedBox(height: 12),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ContainerSize(
                            increase: increaseAge,
                            decrease: decreaseAge,
                            nameData: "Age",
                            mount: age.toString()),
                        ContainerSize(
                          increase: increaseWeight,
                          decrease: decreaseWeight,
                          nameData: "Weight (Kg)",
                          mount: weight.toString(),
                        ),
                      ],
                    ),
                    Container(
                      margin: const EdgeInsets.all(20),
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.2),
                            offset: const Offset(10, 10),
                            spreadRadius: 4,
                            blurRadius: 10,
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(
                              height: 18,
                            ),
                            Text(
                              "Height (Cm)",
                              style: TextStyle(
                                fontSize: 18,
                                color: const Color(0xff9188f1),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Row(
                              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    color: const Color(0xff9188f1),
                                    borderRadius: BorderRadius.circular(50),
                                  ),
                                  child: IconButton(
                                    onPressed: () {
                                      decreaseHeight();
                                    },
                                    icon: const Icon(
                                      Icons.remove,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 24),
                                Container(
                                  decoration: BoxDecoration(
                                    color: const Color(0xff9188f1),
                                    borderRadius: BorderRadius.circular(50),
                                  ),
                                  child: IconButton(
                                    onPressed: () {
                                      increaseHeight();
                                    },
                                    icon: const Icon(
                                      Icons.add,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                const Spacer(),
                                Text(
                                  height.toString(),
                                  style: TextStyle(
                                      color: const Color(0xff9188f1),
                                      fontSize: 46,
                                      fontWeight: FontWeight.w800),
                                ),
                              ],
                            ),
                            const SizedBox(height: 12),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 6),
                    Padding(
                      padding: const EdgeInsets.all(16),
                      child: SizedBox(
                        height: 64,
                        child: ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(
                              const Color(0xff9188f1),
                            ),
                            elevation: MaterialStateProperty.all(0),
                          ),
                          onPressed: () => calculateBMI(height, weight),
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Calculate",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 22,
                                ),
                              ),
                              SizedBox(width: 14),
                              Icon(
                                Icons.timelapse_rounded,
                                color: Colors.white,
                                size: 30,
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 12),
                    _resultBox(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _resultBox() => Container(
        width: double.infinity,
        padding: const EdgeInsets.all(20),
        margin: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: getColor(),
          border: Border.all(
            width: 4,
            color: Colors.white10,
          ),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          children: [
            Text(
              'Your BMI result',
              style: TextStyle(
                fontSize: 26,
                color: Colors.white,
                fontWeight: FontWeight.w900,
              ),
            ),
            const SizedBox(height: 16),
            Text(
              0 < bmiResult && bmiResult < 14
                  ? 'Are you live ?!'
                  : bmiResult.toStringAsFixed(1),
              style: TextStyle(
                fontSize: 0 < bmiResult && bmiResult < 14 ? 34 : 59,
                color: Colors.white,
                fontWeight: FontWeight.w900,
              ),
            ),
          ],
        ),
      );

  Color getColor() {
    if (bmiResult > 14 && bmiResult <= 18.5) {
      return Colors.yellow.shade600;
    } else if (18.5 < bmiResult && bmiResult <= 24.9) {
      return Colors.green;
    } else if (bmiResult > 24.9 && bmiResult <= 29.9) {
      return Colors.orange;
    } else if (bmiResult > 29.9) {
      return Colors.red.shade700;
    } else
      return Colors.black;
  }

  void calculateBMI(int heightCm, int weightKg) {
    // Convert height from cm to meters
    double heightM = heightCm / 100;

    // Calculate BMI
    double bmi = weightKg / (heightM * heightM);

    setState(() {
      bmiResult = bmi;
    });
  }
}
