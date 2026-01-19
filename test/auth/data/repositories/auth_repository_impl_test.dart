import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:tuto_riverpod_clean_arch/auth/data/repositories/auth_repository_impl.dart';
import 'package:tuto_riverpod_clean_arch/auth/domain/entities/user.dart';

import '../../../mocks.mocks.dart';
import '../../../test_helpers.dart';

void main() {
  setUpAll(setupMockito);

  late AuthRepositoryImpl repository;
  late MockAuthRemoteDataSource mockRemoteDataSource;
  late MockAuthFakeDataSource mockFakeDataSource;

  setUp(() {
    mockRemoteDataSource = MockAuthRemoteDataSource();
    mockFakeDataSource = MockAuthFakeDataSource();
    repository = AuthRepositoryImpl(mockRemoteDataSource, mockFakeDataSource);
  });

  group('AuthRepositoryImpl', () {
    const email = 'test@example.com';
    const password = 'password123';
    final userEntity = UserEntity(id: '1', name: 'Test User');
    final expectedState = UserState.data(userEntity);

    test('should use fake data source for login', () async {
      when(
        mockFakeDataSource.login(any),
      ).thenAnswer((_) async => expectedState);

      final result = await repository.login(email: email, password: password);

      expect(result, expectedState);
      verify(mockFakeDataSource.login(any));
      verifyNoMoreInteractions(mockFakeDataSource);
      verifyZeroInteractions(mockRemoteDataSource);
    });

    test('should return error state when fake data source fails', () async {
      const errorState = UserState.badCredentialsError();
      when(mockFakeDataSource.login(any)).thenAnswer((_) async => errorState);

      final result = await repository.login(email: email, password: password);

      expect(result, errorState);
      verify(mockFakeDataSource.login(any));
    });
  });
}
