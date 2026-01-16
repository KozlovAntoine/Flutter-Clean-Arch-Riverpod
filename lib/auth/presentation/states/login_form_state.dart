import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_form_state.freezed.dart';

@freezed
abstract class LoginFormState with _$LoginFormState {
  factory LoginFormState({
    required String email,
    required String password,
    required bool isLoading,
    String? emailError,
    String? passwordError,
    String? error,
  }) = _LoginFormState;

  factory LoginFormState.empty() =>
      _LoginFormState(email: '', password: '', isLoading: false);
}
