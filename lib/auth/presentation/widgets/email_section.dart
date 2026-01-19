part of '../pages/login_page.dart';

class EmailSection extends StatelessWidget {
  const EmailSection({required this.onChanged, this.error, super.key});

  final void Function(String) onChanged;
  final String? error;

  @override
  Widget build(BuildContext context) {
    return FieldSection(
      title: 'login.form.email'.tr(),
      onChanged: onChanged,
      error: error?.tr(),
    );
  }
}
