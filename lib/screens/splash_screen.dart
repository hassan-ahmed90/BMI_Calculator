import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:bmi_calculator/screens/input_page.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:page_transition/page_transition.dart';
class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      backgroundColor: Colors.black,
        splash: Lottie.asset('assets/circle_animate.json'),
        nextScreen: InputPage(),
      duration: 3000,
      splashIconSize: 250,
      pageTransitionType: PageTransitionType.leftToRightWithFade ,
      splashTransition: SplashTransition.sizeTransition,
      animationDuration: Duration(seconds: 1),

    );
  }
}
