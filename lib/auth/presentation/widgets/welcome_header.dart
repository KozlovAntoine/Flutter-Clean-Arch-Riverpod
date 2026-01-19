part of '../pages/account_page.dart';

class WelcomeHeader extends StatelessWidget {
  const WelcomeHeader({required this.firstname, super.key});

  final String firstname;

  @override
  Widget build(BuildContext context) {
    return Text('account.welcome'.tr(namedArgs: {'firstname': firstname}));
  }
}
