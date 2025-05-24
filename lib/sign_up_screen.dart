import 'package:flutter/material.dart';
import 'custom_widgets.dart';

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
            const Text('Create Account',
                style: TextStyle(
                    fontSize: 35,
                )
            ),
            const SizedBox(height: 8),
            Row(
              children: [
                const Text('Enter your Name, Email and Password\n'
                    'for sign up. '),
                SizedBox(height:16),
                Center(
                  child: GestureDetector(
                    onTap: () {
                      // Navigate back to sign in
                    },
                    child: const Text(
                        "\nAlready have account?",
                        style: TextStyle(
                            color: Colors.green,

                        )
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 24),
            TextField(decoration: inputDecoration(
                "Full Name")
            ),
            const SizedBox(height: 16),
            TextField(decoration: inputDecoration(
                "Email Address"
            )
            ),
            const SizedBox(height: 16),
            TextField(
              obscureText: true,
              decoration: inputDecoration("Password").copyWith(
                suffixIcon: Icon(Icons.visibility_off),
              ),
            ),
            SizedBox(height: 16),
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
                    "SIGN UP",
                    style:TextStyle(
                      color: Colors.white,
                    )),
              ),
            ),
            const SizedBox(height: 12),
            Center(
              child: const Text(
                "By Signing up you agree to our Terms\n"
                    "     Conditions & Privacy Policy.",
                style: TextStyle(fontSize: 15),
              ),
            ),
            const SizedBox(height: 16),
            const Center(child: Text("Or")),
            const SizedBox(height: 16),
            socialButton(text: "CONNECT WITH FACEBOOK", icon: Icons.facebook, color: Colors.indigo),
            const SizedBox(height: 8),
            socialButton(text: "CONNECT WITH GOOGLE", icon: Icons.g_mobiledata, color: Colors.blue),
          ],
        ),
      ),
    );
  }
}
