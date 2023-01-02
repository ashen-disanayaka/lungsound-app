import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:lungsound_detectorapp/login.dart';
import "package:page_transition/page_transition.dart";

class Landing extends StatelessWidget {
  const Landing({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: Center(
        child: Column(
          children: [
            Image.asset(
              'assets/img/Group 4.png',
              scale: 1.5,
            ),
            const Text(
              'Lung sound',
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            const Text(
              'Detector',
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w400,
                  color: Colors.white),
            ),

          ],
        ),
      ),
      backgroundColor: Color(0xff48CE9F),
      nextScreen: Login(),
      splashIconSize: 250,
      duration: 3000,
      splashTransition: SplashTransition.fadeTransition,
      pageTransitionType: PageTransitionType.bottomToTop,
      animationDuration: Duration(seconds: 2),
    );
  }
}
