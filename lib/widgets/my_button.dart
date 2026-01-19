import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  const MyButton({required this.onPressed, required this.isLoading, super.key});

  final VoidCallback onPressed;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    if (isLoading) return const Center(child: CircularProgressIndicator());
    return FilledButton(
      onPressed: onPressed,
      child: Text('login.form.confirm'.tr()),
    );
  }
}
