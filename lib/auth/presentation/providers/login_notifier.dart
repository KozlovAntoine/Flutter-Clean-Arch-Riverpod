import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:tuto_riverpod_clean_arch/auth/domain/entities/user.dart';
import 'package:tuto_riverpod_clean_arch/auth/domain/services/user_service.dart';
import 'package:tuto_riverpod_clean_arch/auth/presentation/states/login_form_state.dart';

part 'login_notifier.g.dart';

@riverpod
class LoginNotifier extends _$LoginNotifier {
  @override
  LoginFormState build() => .empty();

  void setEmail(String email) =>
      state = state.copyWith(email: email, emailError: null);

  void setPassword(String password) =>
      state = state.copyWith(password: password, passwordError: null);

  Future<void> submit() async {
    if (state.isLoading) return;
    state = state.copyWith(
      isLoading: true,
      error: null,
      emailError: null,
      passwordError: null,
    );

    final result = await ref
        .read(userServiceProvider.notifier)
        .login(email: state.email, password: state.password);
    if (!ref.mounted) return;
    state = state.copyWith(isLoading: false);

    result.whenOrNull(
      badCredentialsError: () =>
          state = state.copyWith(error: 'login.form.errors.bad_credentials'),
      invalidEmailError: () =>
          state = state.copyWith(emailError: 'login.form.errors.invalid_email'),
      networkError: () =>
          state = state.copyWith(error: 'login.form.errors.network_error'),
      defaultError: (_, _) =>
          state = state.copyWith(error: 'login.form.errors.default_error'),
      passwordEmptyError: () => state = state.copyWith(
        passwordError: 'login.form.errors.password_empty_error',
      ),
    );
  }
}
