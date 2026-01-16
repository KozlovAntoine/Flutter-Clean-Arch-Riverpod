part of '../pages/login_page_content.dart';

class PasswordSection extends StatelessWidget {
  const PasswordSection({super.key, required this.onChanged, this.error});

  final Function(String) onChanged;
  final String? error;

  @override
  Widget build(BuildContext context) {
    return FieldSection(
      title: 'login.form.password'.tr(),
      onChanged: onChanged,
      error: error?.tr(),
      obscureText: true,
    );
  }
}
