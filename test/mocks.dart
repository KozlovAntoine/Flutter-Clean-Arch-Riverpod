import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:tuto_riverpod_clean_arch/auth/data/client/auth_client.dart';
import 'package:tuto_riverpod_clean_arch/auth/data/datasources/auth_fake_data_source.dart';
import 'package:tuto_riverpod_clean_arch/auth/data/datasources/auth_remote_data_source.dart';
import 'package:tuto_riverpod_clean_arch/auth/domain/entities/user.dart';
import 'package:tuto_riverpod_clean_arch/auth/domain/repositories/auth_repository.dart';

@GenerateMocks([
  AuthRepository,
  AuthRemoteDataSource,
  AuthFakeDataSource,
  AuthClient,
])
void main() {
  provideDummy<UserState>(const UserState.defaultError());
}
