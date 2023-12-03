import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class OnboardingScreen3 extends StatelessWidget {
  const OnboardingScreen3({super.key});

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
        child: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            Lottie.network(
              'https://lottie.host/906544b4-0b4e-4c21-9ff0-e6b44a597a08/kvOFOyYsxF.json',
            ),
            const Text(
              'Привіт!',
              style: TextStyle(
                fontSize: 50,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const Text(
              'Приємного прослуховування :)',
              style: TextStyle(
                fontSize: 15,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
