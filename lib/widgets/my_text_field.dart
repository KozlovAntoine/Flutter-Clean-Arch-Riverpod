import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  const MyTextField({
    required this.onChanged,
    super.key,
    this.error,
    this.obscureText = false,
  });

  final String? error;
  final void Function(String) onChanged;
  final bool obscureText;

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: onChanged,
      obscureText: obscureText,
      decoration: InputDecoration(
        errorText: error,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
        enabledBorder: const OutlineInputBorder(),
        focusedBorder: const OutlineInputBorder(),
      ),
    );
  }
}
