import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class OnboardingScreen2 extends StatelessWidget {
  const OnboardingScreen2({super.key});

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
          'https://lottie.host/4bc85633-0c14-489a-850d-9a968dc9d866/djhNYFWFYB.json',
        ),
      ),
    );
  }
}
