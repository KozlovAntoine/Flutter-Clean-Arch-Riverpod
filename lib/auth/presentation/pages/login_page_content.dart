import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tuto_riverpod_clean_arch/auth/presentation/providers/login_notifier.dart';
import 'package:tuto_riverpod_clean_arch/widgets/field_section.dart';
import 'package:tuto_riverpod_clean_arch/widgets/my_button.dart';

part '../widgets/email_section.dart';
part '../widgets/login_button.dart';
part '../widgets/password_section.dart';
part '../widgets/text_error.dart';

class LoginPageContent extends ConsumerWidget {
  const LoginPageContent({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(loginProvider);
    final notifier = ref.read(loginProvider.notifier);
    return Scaffold(
      appBar: AppBar(title: Text('login.title'.tr())),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: ListView(
          children: [
            EmailSection(onChanged: notifier.setEmail, error: state.emailError),
            const SizedBox(height: 16),
            PasswordSection(
              onChanged: notifier.setPassword,
              error: state.passwordError,
            ),
            if (state.error != null)
              Padding(
                padding: const EdgeInsets.only(top: 8),
                child: TextError(error: state.error!),
              ),
            const SizedBox(height: 16),
            LoginButton(onPressed: notifier.submit, isLoading: state.isLoading),
          ],
        ),
      ),
    );
  }
}
