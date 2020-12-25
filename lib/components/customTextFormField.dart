import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final double size;
  final bool obscureText;
  final String labelName;


  CustomTextFormField({
    this.obscureText,
    this.labelName,
    this.size = 16.0,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText,
      decoration: InputDecoration(
        labelText: labelName,
        labelStyle: TextStyle(
          fontSize: size,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}