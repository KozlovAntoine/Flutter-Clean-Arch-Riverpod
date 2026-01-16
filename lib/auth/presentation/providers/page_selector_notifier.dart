import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:tuto_riverpod_clean_arch/auth/domain/services/user_service.dart';
import 'package:tuto_riverpod_clean_arch/auth/presentation/states/connection_ui_state.dart';

part 'page_selector_notifier.g.dart';

@riverpod
ConnectionUiState pageSelectorNotifier(Ref ref) {
  final userInfo = ref.watch(userServiceProvider);
  return userInfo != null
      ? ConnectionUiState.connected()
      : ConnectionUiState.disconnected();
}
