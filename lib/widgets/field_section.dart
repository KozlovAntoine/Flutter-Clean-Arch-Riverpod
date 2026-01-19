import 'package:flutter/material.dart';
import 'package:tuto_riverpod_clean_arch/widgets/my_text_field.dart';

class FieldSection extends StatelessWidget {
  const FieldSection({
    required this.title,
    required this.onChanged,
    required this.error,
    this.obscureText = false,
    super.key,
  });

  final String title;
  final void Function(String) onChanged;
  final bool obscureText;
  final String? error;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title),
        MyTextField(
          onChanged: onChanged,
          error: error,
          obscureText: obscureText,
        ),
      ],
    );
  }
}
