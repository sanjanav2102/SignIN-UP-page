import 'package:flutter/material.dart';
import 'package:uidev/sign_in_screen.dart';
import 'custom_widgets.dart';
import 'package:flutter/gestures.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(),
        title: const Text("Create Account"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Create Account',
              style: TextStyle(
                fontSize: 35,
              ),
            ),
            const SizedBox(height: 8),
            RichText(
              text: TextSpan(
                style: const TextStyle(color: Colors.black, fontSize: 16),
                children: [
                  const TextSpan(
                    text: 'Enter your Name, Email and Password for sign up. ',
                  ),
                  TextSpan(
                    text: 'Already have account?',
                    style: const TextStyle(
                      color: Colors.green,
                      decoration: TextDecoration.underline,
                    ),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const SignInScreen(),
                          ),
                        );
                      },
                  ),
                ],
              ),
            ),
            const SizedBox(height: 24),
            TextField(decoration: inputDecoration("Full Name")),
            const SizedBox(height: 16),
            TextField(decoration: inputDecoration("Email Address")),
            const SizedBox(height: 16),
            TextField(
              obscureText: true,
              decoration: inputDecoration("Password").copyWith(
                suffixIcon: const Icon(Icons.visibility_off),
              ),
            ),
            const SizedBox(height: 16),
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: const Text(
                  "SIGN UP",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 12),
            const Center(
              child: Text(
                "By Signing up you agree to our Terms\n"
                    "     Conditions & Privacy Policy.",
                style: TextStyle(fontSize: 15),
              ),
            ),
            const SizedBox(height: 16),
            const Center(child: Text("Or")),
            const SizedBox(height: 16),
            socialButton(
              text: "CONNECT WITH FACEBOOK",
              icon: Icons.facebook,
              color: Colors.indigo,
            ),
            const SizedBox(height: 8),
            socialButton(
              text: "CONNECT WITH GOOGLE",
              icon: Icons.g_mobiledata,
              color: Colors.blue,
            ),
          ],
        ),
      ),
    );
  }
}
