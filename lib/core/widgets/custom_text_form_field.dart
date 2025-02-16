import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final String labelText;
  final bool obscureText;
  final TextInputType keyboardType;
  final void Function(String?)? onSaved;
  final Widget? suffixIcon;
  final int? maxLines;

  const CustomTextFormField({
    required this.labelText,
    this.obscureText = false,
    this.keyboardType = TextInputType.text,
    super.key,
    this.onSaved,
    this.suffixIcon,
    this.maxLines = 1,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        labelText: labelText,
        filled: true,
        fillColor: Color(0xFFF9FAFA),
        border: buildBorder(),
        enabledBorder: buildBorder(),
        focusedBorder: buildBorder(),
        suffixIcon: suffixIcon,
      ),
      onSaved: onSaved,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter some text';
        }
        return null;
      },
      obscureText: obscureText,
      keyboardType: keyboardType,
      maxLines: maxLines,
    );
  }

  OutlineInputBorder buildBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(4.0),
      borderSide: BorderSide(
        width: 1.0,
        color: Color(0xFFE6E9E9),
      ),
    );
  }
}
