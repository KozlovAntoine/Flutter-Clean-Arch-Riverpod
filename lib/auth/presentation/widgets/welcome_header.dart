part of '../pages/account_page_content.dart';

class WelcomeHeader extends StatelessWidget {
  const WelcomeHeader({super.key, required this.firstname});

  final String firstname;

  @override
  Widget build(BuildContext context) {
    return Text('account.welcome'.tr(namedArgs: {'firstname': firstname}));
  }
}
