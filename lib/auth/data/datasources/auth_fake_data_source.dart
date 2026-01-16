import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:tuto_riverpod_clean_arch/auth/data/models/auth_request.dart';
import 'package:tuto_riverpod_clean_arch/auth/data/models/user_model.dart';
import 'package:tuto_riverpod_clean_arch/auth/domain/entities/user.dart';

part 'auth_fake_data_source.g.dart';

class FakeTimeout implements Exception {}

class FakeBadCredentials implements Exception {}

@Riverpod(keepAlive: true)
AuthFakeDataSource authFakeDataSource(Ref ref) {
  return AuthFakeDataSource();
}

class AuthFakeDataSource {
  Future<UserState> login(AuthRequest authRequest) async {
    try {
      await Future.delayed(const Duration(seconds: 2));
      final userModel = _getFakeUserModel(authRequest);
      return UserState.data(userModel.toEntity());
    } on Exception catch (exception) {
      return _mapError(exception);
    } catch (error) {
      return UserState.defaultError(exception: Exception(error));
    }
  }

  UserModel _getFakeUserModel(AuthRequest authRequest) {
    if (authRequest.email == 'me@example.com' &&
        authRequest.password == 'riverpod') {
      return UserModel(id: '1', email: 'me@example.com', firstname: 'Me');
    }

    if (authRequest.password == 'default') {
      throw Exception('Default error');
    }

    if (authRequest.password == 'dio') {
      throw FakeTimeout();
    }
    throw FakeBadCredentials();
  }

  UserState _mapError(Exception exception) {
    if (exception is FakeTimeout) {
      return const UserState.networkError();
    }
    if (exception is FakeBadCredentials) {
      return const UserState.badCredentialsError();
    }
    return UserState.defaultError(exception: exception);
  }
}
