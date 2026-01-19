import 'package:tuto_riverpod_clean_arch/auth/domain/entities/user.dart';
import 'package:tuto_riverpod_clean_arch/auth/domain/repositories/auth_repository.dart';
import 'package:tuto_riverpod_clean_arch/auth/domain/usecases/params/login_params.dart';
import 'package:tuto_riverpod_clean_arch/core/usecases/usecase.dart';

class LoginUseCase implements UseCase<UserState, LoginParams> {
  LoginUseCase(this._repository);

  final AuthRepository _repository;

  @override
  Future<UserState> execute(LoginParams params) async {
    final formattedEmail = params.email.trim().toLowerCase();
    if (!_isValidEmail(formattedEmail)) {
      return const UserState.invalidEmailError();
    }

    if (params.password.isEmpty) {
      return const UserState.passwordEmptyError();
    }

    try {
      final result = await _repository.login(
        email: formattedEmail,
        password: params.password,
      );
      return result;
    } catch (exception, stackTrace) {
      return UserState.defaultError(
        exception: exception is Exception
            ? exception
            : Exception(exception.toString()),
        stackTrace: stackTrace,
      );
    }
  }

  bool _isValidEmail(String email) {
    return email.contains('@');
  }
}
