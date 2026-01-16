part of '../pages/account_page_content.dart';

class DisconnectButton extends StatelessWidget {
  const DisconnectButton({super.key, required this.onPressed});

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onPressed,
      child: Text('account.disconnect'.tr()),
    );
  }
}
