import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:tuto_riverpod_clean_arch/auth/data/client/auth_client.dart';
import 'package:tuto_riverpod_clean_arch/auth/data/models/auth_request.dart';
import 'package:tuto_riverpod_clean_arch/auth/domain/entities/user.dart';

part 'auth_remote_data_source.g.dart';

@Riverpod(keepAlive: true)
AuthRemoteDataSource authRemoteDataSource(Ref ref) {
  final dio = Dio();
  final client = AuthClient(dio);
  return AuthRemoteDataSource(client);
}

class AuthRemoteDataSource {
  AuthRemoteDataSource(this._client);

  final AuthClient _client;

  Future<UserState> login(AuthRequest authRequest) async {
    try {
      final userModel = await _client.login(authRequest);
      return UserState.data(userModel.toEntity());
    } on DioException catch (dioException) {
      return _mapError(dioException);
    } on Exception catch (exception, stackTrace) {
      return UserState.defaultError(
        exception: exception,
        stackTrace: stackTrace,
      );
    } catch (error) {
      return UserState.defaultError(exception: Exception(error));
    }
  }

  UserState _mapError(DioException dioException) {
    if (dioException.type == DioExceptionType.connectionTimeout) {
      return const UserState.networkError();
    }
    final statusCode = dioException.response?.statusCode;

    return switch (statusCode) {
      401 => const UserState.badCredentialsError(),
      _ => UserState.defaultError(exception: dioException),
    };
  }
}
