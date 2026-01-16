part of '../pages/login_page_content.dart';

class TextError extends StatelessWidget {
  const TextError({super.key, required this.error});

  final String error;

  @override
  Widget build(BuildContext context) {
    return Text(
      error.tr(),
      style: Theme.of(context).textTheme.bodySmall?.copyWith(color: Colors.red),
    );
  }
}
