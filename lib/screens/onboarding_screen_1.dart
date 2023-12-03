import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class OnboardingScreen1 extends StatelessWidget {
  const OnboardingScreen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      height: double.infinity,
      width: double.infinity,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color.fromRGBO(255, 148, 214, 1),
            Color.fromRGBO(152, 239, 250, 1),
          ],
        ),
      ),
      child: Center(
        child: Lottie.network(
          'https://lottie.host/cc47ec63-c334-4743-939c-9bc881f6a8e8/zkUlX2Okvm.json',
        ),
      ),
    );
  }
}
