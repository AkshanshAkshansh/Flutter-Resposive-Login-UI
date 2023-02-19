import 'package:flutter/material.dart';
import './gradient_button.dart';
import './login_field.dart';
import './social_button.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Image.asset('assets/images/signin_balls.png'),
              const Text(
                'Sign in',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 50,
                ),
              ),
              const SizedBox(height: 50),
              const SocialButton(
                iconPath: 'assets/svgs/g_logo.svg',
                label: 'Continue in Google',
                horizontalPadding: 105,
              ),
              const SizedBox(height: 20),
              const SocialButton(
                iconPath: 'assets/svgs/f_logo.svg',
                label: 'Continue in Facebook',
                horizontalPadding: 95,
              ),
              const SizedBox(height: 15),
              const Text(
                "or",
                style: TextStyle(
                  fontSize: 17,
                ),
              ),
              const SizedBox(height: 15),
              const LoginField(hint: 'Email'),
              const SizedBox(height: 15),
              const LoginField(hint: 'Password'),
              const SizedBox(height: 20),
              const GradientButton(),
            ],
          ),
        ),
      ),
    );
  }
}
