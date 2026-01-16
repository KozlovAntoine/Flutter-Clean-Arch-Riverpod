import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:tuto_riverpod_clean_arch/auth/domain/services/user_service.dart';
import 'package:tuto_riverpod_clean_arch/other_domain/manager_service.dart';

import '../states/account_display_state.dart';

part 'account_notifier.g.dart';

@riverpod
AccountDisplayState accountDisplayState(Ref ref) {
  final firstname = ref.read(userServiceProvider)!.name;
  final isManager = ref.read(isManagerProvider);
  return AccountDisplayState(
    firstname: firstname,
    displayManagerAccess: isManager,
  );
}

@riverpod
AccountNotifier accountNotifier(Ref ref) {
  final userService = ref.read(userServiceProvider.notifier);
  return AccountNotifier(userService);
}

class AccountNotifier {
  UserService userService;

  AccountNotifier(this.userService);

  void logout() {
    userService.logout();
  }
}
