import 'package:flutter/material.dart';
import 'package:uidev/sign_up_screen.dart';
//import 'sign_in_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Auth UI',
      debugShowCheckedModeBanner: false,
      home: const SignUpScreen(),
    );
  }
}
