import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:tuto_riverpod_clean_arch/auth/domain/entities/user.dart';
import 'package:tuto_riverpod_clean_arch/auth/domain/usecases/params/login_params.dart';
import 'package:tuto_riverpod_clean_arch/auth/domain/usecases/usecases_providers.dart';

part 'user_service.g.dart';

@Riverpod(keepAlive: true)
class UserService extends _$UserService {
  @override
  UserEntity? build() {
    return null;
  }

  Future<UserState> login({
    required String email,
    required String password,
  }) async {
    final loginUseCase = ref.read(loginUseCaseProvider);

    final params = LoginParams(email: email, password: password);
    final result = await loginUseCase.execute(params);

    if (result is UserStateData) {
      state = result.user;
    }

    return result;
  }

  Future<void> logout() async {
    state = null;
  }
}
