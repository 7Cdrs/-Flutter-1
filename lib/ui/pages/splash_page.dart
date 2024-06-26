import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/shared/theme.dart';
import 'package:flutter_application_1/ui/pages/onboarding_page.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();

    Timer(const Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => OnboardingPage(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: darkBakcgroundColor,
      body: Center(
        child: Container(
          width: 155,
          height: 50,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                'assets/img_logo_dark.png',
              ),
            ),
          ),
        ),
      ),
    );
  }
}
