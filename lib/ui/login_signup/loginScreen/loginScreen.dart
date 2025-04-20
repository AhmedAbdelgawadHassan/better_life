import 'package:better_life/ui/login_signup/buildSocialButtons.dart';
import 'package:better_life/ui/login_signup/forgotPasswordScreen/forgoPasswordScreen.dart';
import 'package:better_life/ui/login_signup/signupScreen/signupScreen.dart';
import 'package:flutter/material.dart';
import '../../../utils/ButtonStyles.dart';
import '../../../utils/dialog_utils.dart';
import '../../home/homeScreen.dart';
import '../buildTextField.dart';

class LoginScreen extends StatefulWidget {
  static const String routeName = 'login screen';

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final formKey = GlobalKey<FormState>();
  bool isObscure = true;
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      backgroundColor: theme.scaffoldBackgroundColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: Text(
          "Login",
          style: theme.textTheme.titleLarge?.copyWith(
            fontWeight: FontWeight.w700,
            color: theme.colorScheme.onBackground,
          ),
        ),
        leading: IconButton(
          icon: Icon(Icons.chevron_left, size: 32, color: theme.colorScheme.onBackground),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Form(
            key: formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 40),
                BuildTextField(
                  label: "Enter your email",
                  icon: Icons.email,
                  controller: emailController,
                  isEmail: true,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Please enter your email";
                    }
                    if (!RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(value)) {
                      return "Enter a valid email";
                    }
                    return null;
                  },
                ),
                SizedBox(height: 20),
                BuildTextField(
                  label: "Enter your password",
                  icon: Icons.lock,
                  controller: passwordController,
                  isPassword: true,
                  isObscure: isObscure,
                  toggleObscure: () {
                    setState(() {
                      isObscure = !isObscure;
                    });
                  },
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Please enter your password";
                    }
                    if (value.length < 6) {
                      return "Password must be at least 6 characters";
                    }
                    return null;
                  },
                ),
                SizedBox(height: 10),
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => ForgotPassword()));
                    },
                    child: Text(
                      "Forgot Password?",
                      style: TextStyle(color: theme.primaryColor),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        DialogUtils.showSuccessDialog(
                          context: context,
                          title: "Yeay! Welcome Back",
                          message: "Once again you login successfully \n into BetterLife app",
                          buttonText: "Go to Home",
                          routeName: HomeScreen.routeName,
                        );
                      }
                    },
                    style: ButtonStyles.primaryButtonStyle,
                    child: Text(
                      "Login",
                      style: theme.textTheme.labelMedium,
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don't have an account?",
                      style: theme.textTheme.bodyMedium?.copyWith(color: theme.colorScheme.onBackground.withOpacity(0.5)),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, SignUpScreen.routeName);
                      },
                      child: Text(
                        "Sign Up",
                        style: TextStyle(color: theme.primaryColor),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Expanded(
                      child: Divider(
                        color: theme.dividerColor.withOpacity(0.5),
                        thickness: 1,
                        endIndent: 10,
                      ),
                    ),
                    Text(
                      "OR",
                      style: theme.textTheme.bodyLarge?.copyWith(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: theme.textTheme.bodyLarge?.color?.withOpacity(0.7),
                      ),
                    ),
                    Expanded(
                      child: Divider(
                        color: theme.dividerColor.withOpacity(0.5),
                        thickness: 1,
                        indent: 10,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                buildSocialButtons(
                  text: "Sign in with Google",
                  icon: "assets/images/icons/google_icon.png",
                ),
                SizedBox(height: 15),
                buildSocialButtons(
                  text: "Sign in with Apple",
                  icon: "assets/images/icons/apple_icon.png",
                ),
                SizedBox(height: 15),
                buildSocialButtons(
                  text: "Sign in with Facebook",
                  icon: "assets/images/icons/facebook_icon.png",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
