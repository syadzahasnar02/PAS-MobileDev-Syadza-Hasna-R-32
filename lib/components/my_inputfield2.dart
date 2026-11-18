import 'package:flutter/material.dart';

class MyInputField2 extends StatelessWidget {
  final String myHint;
  final TextEditingController controller;
  final double radius;

  const MyInputField2({
    super.key,
    required this.myHint,
    required this.controller,
    required this.radius,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      style: const TextStyle(
        fontWeight: FontWeight.bold,
        color: Color(0xFF4B4B4B),
      ),
      decoration: InputDecoration(
        hintText: myHint,
        hintStyle: const TextStyle(
          color: Color(0xFFAFAFAF),
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}