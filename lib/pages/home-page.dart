

import 'package:bmi_app_v1/enums.dart';

import 'package:bmi_app_v1/widgets/container_size.dart';


import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {

  HomePage({
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
      body: Column(
        children: [
          const SizedBox(
            height: 70,
          ),
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
            margin: const EdgeInsets.all(17),
            width: double.infinity,
            decoration: BoxDecoration(
              color: const Color(0xff9188f1),
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
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 18,
                  ),
                  const Text(
                    "Height (Cm)",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: IconButton(
                          onPressed: () {
                            increaseHeight();
                          },
                          icon: const Icon(
                            Icons.arrow_upward_rounded,
                          ),
                        ),
                      ),
                      Text(
                        height.toString(),
                        style: const TextStyle(
                            color: Colors.white,
                            fontSize: 46,
                            fontWeight: FontWeight.w800),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: IconButton(
                          onPressed: () {
                            decreaseHeight();
                          },
                          icon: const Icon(
                            Icons.arrow_downward_rounded,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: const Color(0xff9188f1),
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
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Gender",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          InkWell(
                            onTap: () {
                              setState(() {
                                selectedGender = Gender.male;
                              });
                            },
                            child: Container(
                              width: 100,
                              height: 100,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(
                                  color: selectedGender == Gender.male
                                      ? Colors.green
                                      : Colors.transparent,
                                  width: 4,
                                ),
                              ),
                              child: Image.asset("assets/male.jpg",
                                  fit: BoxFit.cover),
                            ),
                          ),
                          const SizedBox(height: 10),
                          const Text(
                            "Male",
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          InkWell(
                            onTap: () {
                              setState(() {
                                selectedGender = Gender.female;
                              });
                            },
                            child: Container(
                              width: 105,
                              height: 100,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: selectedGender == Gender.female
                                      ? Colors.green
                                      : Colors.transparent,
                                  width: 6,
                                ),
                              ),
                              child: Image.asset(
                                "assets/female.jpg",
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          const SizedBox(height: 10),
                          const Text(
                            "Female",
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: SizedBox(
              height: 60,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                    Colors.black,
                  ),
                ),
                onPressed: () {
               
                },
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Calculate",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    SizedBox(width: 14),
                    Icon(
                      Icons.calculate,
                      color:  Color(0xff9188f1),
                      size: 26,
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
