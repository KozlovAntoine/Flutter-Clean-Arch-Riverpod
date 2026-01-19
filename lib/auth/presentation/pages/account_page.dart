import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tuto_riverpod_clean_arch/auth/presentation/providers/account_notifier.dart';

part '../widgets/disconnect_button.dart';
part '../widgets/manager_access_button.dart';
part '../widgets/welcome_header.dart';

class AccountPage extends ConsumerWidget {
  const AccountPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.read(accountDisplayStateProvider);

    return Scaffold(
      appBar: AppBar(title: Text('account.title'.tr())),
      body: Center(
        child: Column(
          children: [
            WelcomeHeader(firstname: state.firstname),
            if (state.displayManagerAccess)
              ManagerAccessButton(
                onPressed: () => debugPrint('Manager access pressed'),
              ),
            DisconnectButton(onPressed: () => _disconnect(ref)),
          ],
        ),
      ),
    );
  }

  void _disconnect(WidgetRef ref) => ref.read(accountProvider).logout();
}
