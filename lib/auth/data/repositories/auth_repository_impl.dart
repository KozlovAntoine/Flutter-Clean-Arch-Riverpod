import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:tuto_riverpod_clean_arch/auth/data/datasources/auth_fake_data_source.dart';
import 'package:tuto_riverpod_clean_arch/auth/data/datasources/auth_remote_data_source.dart';
import 'package:tuto_riverpod_clean_arch/auth/data/models/auth_request.dart';
import 'package:tuto_riverpod_clean_arch/auth/domain/entities/user.dart';
import 'package:tuto_riverpod_clean_arch/auth/domain/repositories/auth_repository.dart';

part 'auth_repository_impl.g.dart';

@Riverpod(keepAlive: true)
AuthRepository authRepository(Ref ref) {
  final remoteDataSource = ref.read(authRemoteDataSourceProvider);
  final fakeDataSource = ref.read(authFakeDataSourceProvider);
  return AuthRepositoryImpl(remoteDataSource, fakeDataSource);
}

class AuthRepositoryImpl extends AuthRepository {
  final AuthRemoteDataSource remoteDataSource;
  final AuthFakeDataSource fakeDataSource;

  AuthRepositoryImpl(this.remoteDataSource, this.fakeDataSource);

  // You can have multiples data source and have logic
  @override
  Future<UserState> login({
    required String email,
    required String password,
  }) async {
    // return remoteDataSource.login(AuthRequest(email: email, password: password));
    return fakeDataSource.login(AuthRequest(email: email, password: password));
  }
}
