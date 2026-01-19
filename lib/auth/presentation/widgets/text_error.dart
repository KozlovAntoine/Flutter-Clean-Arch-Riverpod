part of '../pages/login_page_content.dart';

class TextError extends StatelessWidget {
  const TextError({required this.error, super.key});

  final String error;

  @override
  Widget build(BuildContext context) {
    return Text(
      error.tr(),
      style: Theme.of(context).textTheme.bodySmall?.copyWith(color: Colors.red),
    );
  }
}
