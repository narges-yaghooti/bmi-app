import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class LoadingPage extends StatelessWidget {
  const LoadingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          height: 300,
          child: Lottie.network(
            "https://lottie.host/8dec4316-7029-422e-b6f8-f95890783c46/gggQUL23RW.json",
           
          ),
        ),
      ),

    );
  }
  
}
