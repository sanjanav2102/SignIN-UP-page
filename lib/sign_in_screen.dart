import 'package:flutter/material.dart';
import 'package:uidev/sign_up_screen.dart';
import '../custom_widgets.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Welcome',
                style: TextStyle(
                    fontSize: 40,
                )
            ),
            const SizedBox(height: 2),
            const Text('Enter your Email address to sign in.\n'
                'Enjoy your food :)'),
            const SizedBox(height: 24),
            TextField(
              decoration: inputDecoration("Email Address"),
            ),
            const SizedBox(height: 16),
            TextField(
              obscureText: true,
              decoration: inputDecoration("Password").copyWith(
                suffixIcon: Icon(Icons.visibility_off),
              ),
            ),
            const Align(
              alignment: Alignment.centerRight,
              child: Padding(
                padding: EdgeInsets.only(top: 8.0),
                child: Text("Forgot Password?"),
              ),
            ),
            const SizedBox(height: 24),
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                onPressed: () {},
                style:ElevatedButton.styleFrom(
                  backgroundColor:Colors.green,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  )
                ),
                child: const Text(
                    "SIGN IN",
                style:TextStyle(
                  color: Colors.white,
                )),
              ),
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Don't have account? "),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SignUpScreen(),
                      ),
                    );
                    // Navigate to sign up screen
                  },
                  child: const Text("Create new account.",
                      style: TextStyle(color: Colors.green)
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            const Center(child: Text("Or")),
            const SizedBox(height: 16),
            socialButton(text: "CONNECT WITH FACEBOOK", icon: Icons.facebook, color: Colors.indigo),
            const SizedBox(height: 8),
            socialButton(text: "CONNECT WITH GOOGLE",
                icon: Icons.g_mobiledata,
                color: Colors.blue),
          ],
        ),
      ),
    );
  }
}
