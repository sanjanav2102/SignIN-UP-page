import 'package:flutter/material.dart';

Widget socialButton({required String text, required IconData icon, required Color color}) {
  return ElevatedButton.icon(
    style: ElevatedButton.styleFrom(
      backgroundColor: color,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      foregroundColor: Colors.white,
      minimumSize: Size(double.infinity, 50),
    ),
    icon: Icon(icon,
    size: 40,),
    label: Text(text),
    onPressed: () {},
  );
}

InputDecoration inputDecoration(String hint) {
  return InputDecoration(
    hintText: hint,
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
    ),
  );
}
