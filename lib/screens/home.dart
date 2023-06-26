import 'package:flutter/material.dart';
import 'package:liveasy/utils/waves.dart';
import 'package:liveasy/widgets/dropdown.dart';
import 'login.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 5,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/image.png',
                  ),
                  const SizedBox(height: 32),
                  const Text(
                    "Please select your Language",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    "You can change the language at any time.",
                    style: TextStyle(fontSize: 14),
                  ),
                  const SizedBox(height: 24),

                  // languages dropdown
                  const SelectLanguage(),

                  const SizedBox(height: 24),

                  // "NEXT" Button
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const LoginScreen()));
                    },
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size(216, 48),
                      shape: const LinearBorder(),
                      backgroundColor: const Color.fromRGBO(46, 59, 98, 1),
                    ),
                    child: const Text(
                      "NEXT",
                      style: TextStyle(
                        fontSize: 16,
                        letterSpacing: 1,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  )
                ],
              ),
            ),

            // Waves design implemented with Bezier curves inside stack
            Expanded(
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: ClipPath(
                      clipper: BackClipper(),
                      child: Container(
                        height: 113,
                        color: const Color.fromRGBO(147, 210, 243, 1),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: ClipPath(
                      clipper: FrontClipper(),
                      child: Container(
                        height: 113,
                        color: const Color.fromRGBO(46, 59, 98, .5),
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
}
