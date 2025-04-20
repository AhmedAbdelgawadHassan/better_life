import 'package:better_life/ui/home/homeScreen.dart';
import 'package:better_life/ui/home/profileScreen/profileScreen.dart';
import 'package:better_life/ui/login_signup/forgotPasswordScreen/creatNewPassword.dart';
import 'package:better_life/ui/login_signup/loginScreen/loginScreen.dart';
import 'package:better_life/ui/login_signup/signupScreen/signupScreen.dart';
import 'package:better_life/ui/login_signup/forgotPasswordScreen/verificationScreen.dart';
import 'package:better_life/ui/welcome_pages/onboardingScreen/onboardingScreen.dart';
import 'package:better_life/ui/welcome_pages/splashScreen/splashScreen.dart';
import 'package:flutter/material.dart';

final ThemeData appTheme = ThemeData(
  scaffoldBackgroundColor: Colors.white,
  primaryColor: Color(0xFF199A8E),
  colorScheme: ColorScheme.fromSeed(
    seedColor: Color(0xFF199A8E),
    primary: Color(0xFF199A8E),
    secondary: Color(0xFF199A8E),
    background: Colors.white,
    onPrimary: Colors.white,
    onSecondary: Colors.white,
    brightness: Brightness.light,
  ),
  textTheme: TextTheme(
    bodyLarge: TextStyle(color: Colors.black),
    bodyMedium: TextStyle(color: Colors.black),
    titleLarge: TextStyle(color: Colors.black),
    labelMedium: TextStyle(color: Colors.white),
  ),
  iconTheme: IconThemeData(
    color: Color(0xFF199A8E),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: Color(0xFF199A8E),
      foregroundColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
    ),
  ),
  checkboxTheme: CheckboxThemeData(
    fillColor: MaterialStateProperty.all(Color(0xFF199A8E)),
  ),
  useMaterial3: true,
);
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BetterLife',
      theme: appTheme,
      routes: {
        SplashScreen.routeName :(_)=>SplashScreen() ,
        OnboardingScreen.routeName:(_)=>OnboardingScreen(),
        SignUpScreen.routeName:(_)=>SignUpScreen(),
        LoginScreen.routeName:(_)=>LoginScreen(),
        HomeScreen.routeName:(_)=>HomeScreen(),
        VerificationScreen.routName:(_)=>VerificationScreen(userInput: ''),
        CreateNewPasswordScreen.routeName:(_)=>CreateNewPasswordScreen(),
        profileScreen.routeName:(_)=>profileScreen(),

      },
      initialRoute: SplashScreen.routeName,
    );
  }
}
