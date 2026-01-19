import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tuto_riverpod_clean_arch/auth/presentation/pages/account_page_content.dart';
import 'package:tuto_riverpod_clean_arch/auth/presentation/pages/login_page_content.dart';
import 'package:tuto_riverpod_clean_arch/auth/presentation/providers/page_selector_notifier.dart';
import 'package:tuto_riverpod_clean_arch/auth/presentation/states/connection_ui_state.dart';

class PageSelector extends ConsumerWidget {
  const PageSelector({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ref
        .watch(pageSelectorProvider)
        .when(
          connected: () => const AccountPageContent(),
          disconnected: () => const LoginPageContent(),
        );
  }
}
