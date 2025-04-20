import 'package:better_life/ui/login_signup/signupScreen/signupScreen.dart';
import 'package:better_life/utils/ButtonStyles.dart';
import 'package:flutter/material.dart';
import '../../login_signup/loginScreen/loginScreen.dart';

class OnboardingScreen extends StatefulWidget {
  static const String routeName = 'On boarding Screen';
  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  PageController _controller = PageController();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      body: PageView(
        controller: _controller,
        physics: NeverScrollableScrollPhysics(),
        children: [
          Container(
            color: theme.colorScheme.background,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/images/splashScreen/onboardingpic.png",
                  width: 317,
                  height: 467,
                ),
                SizedBox(height: 20),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  child: Text(
                    "Find a lot of specialist doctors in one place",
                    textAlign: TextAlign.center,
                    style: theme.textTheme.titleLarge?.copyWith(
                      fontSize: 22,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                SizedBox(height: 40),
                Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                    margin: EdgeInsets.only(right: 20),
                    child: GestureDetector(
                      onTap: () {
                        _controller.nextPage(
                          duration: Duration(milliseconds: 500),
                          curve: Curves.ease,
                        );
                      },
                      child: Container(
                        width: 56,
                        height: 56,
                        decoration: BoxDecoration(
                          color: theme.primaryColor,
                          shape: BoxShape.circle,
                        ),
                        child: Center(
                          child: Icon(
                            Icons.arrow_forward,
                            color: theme.colorScheme.onPrimary,
                            size: 30,
                          ),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          Container(
            color: theme.colorScheme.background,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/images/splashScreen/logogreen.png",
                  width: 66.37,
                  height: 66.36,
                ),
                SizedBox(height: 2),
                Text(
                  "BetterLife",
                  style: theme.textTheme.titleLarge?.copyWith(
                    fontSize: 25.68,
                    fontWeight: FontWeight.w700,
                    color: theme.primaryColor,
                  ),
                ),
                SizedBox(height: 10),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  child: Text(
                    "Let's get started!",
                    textAlign: TextAlign.center,
                    style: theme.textTheme.titleLarge?.copyWith(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  child: Text(
                    "Login to enjoy the features we’ve \n provided, and stay healthy!",
                    textAlign: TextAlign.center,
                    softWrap: true,
                    style: theme.textTheme.bodyMedium?.copyWith(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Colors.black.withOpacity(0.6),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                SizedBox(
                  width: 263,
                  height: 56,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => LoginScreen()),
                      );
                    },
                    style: ButtonStyles.primaryButtonStyle,
                    child: Text(
                      "Login",
                      style: TextStyle(
                        color: theme.colorScheme.onPrimary,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                SizedBox(
                  width: 263,
                  height: 56,
                  child: OutlinedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SignUpScreen()),
                      );
                    },
                    child: Text(
                      "Sign Up",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                        color: theme.primaryColor,
                      ),
                    ),
                    style: OutlinedButton.styleFrom(
                      side: BorderSide(
                        color: theme.primaryColor,
                        width: 1,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
