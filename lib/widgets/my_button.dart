import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  const MyButton({super.key, required this.onPressed, required this.isLoading});

  final VoidCallback onPressed;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    if (isLoading) return Center(child: CircularProgressIndicator());
    return FilledButton(
      onPressed: onPressed,
      child: Text('login.form.confirm'.tr()),
    );
  }
}
