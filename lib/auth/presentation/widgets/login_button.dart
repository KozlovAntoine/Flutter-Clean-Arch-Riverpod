part of '../pages/login_page_content.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({
    required this.onPressed,
    required this.isLoading,
    super.key,
  });

  final VoidCallback onPressed;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    return MyButton(onPressed: onPressed, isLoading: isLoading);
  }
}
