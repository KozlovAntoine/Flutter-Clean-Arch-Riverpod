part of '../pages/account_page_content.dart';

class ManagerAccessButton extends StatelessWidget {
  const ManagerAccessButton({super.key, required this.onPressed});

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onPressed,
      child: Text('account.manager_access'.tr()),
    );
  }
}
