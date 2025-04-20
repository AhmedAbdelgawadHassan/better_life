import 'package:flutter/material.dart';
import '../onboardingScreen/onboardingScreen.dart';

class SplashScreen extends StatefulWidget {
  static const String routeName = 'Splash Screen';
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => OnboardingScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: theme.primaryColor,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/images/splashScreen/logosplash.png', width: 150),
              SizedBox(height: 20),
              Text(
                'BetterLife',
                style: TextStyle(
                  fontSize: 50.11,
                  fontWeight: FontWeight.w700,
                  color: theme.colorScheme.onPrimary,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
