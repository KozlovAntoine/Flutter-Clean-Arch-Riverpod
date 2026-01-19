import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:tuto_riverpod_clean_arch/auth/data/datasources/auth_remote_data_source.dart';
import 'package:tuto_riverpod_clean_arch/auth/data/models/auth_request.dart';
import 'package:tuto_riverpod_clean_arch/auth/data/models/user_model.dart';
import 'package:tuto_riverpod_clean_arch/auth/domain/entities/user.dart';

import '../../../mocks.mocks.dart';

void main() {
  late AuthRemoteDataSource dataSource;
  late MockAuthClient mockClient;

  setUp(() {
    mockClient = MockAuthClient();
    dataSource = AuthRemoteDataSource(mockClient);
  });

  group('AuthRemoteDataSource', () {
    final authRequest = AuthRequest(
      email: 'test@example.com',
      password: 'password123',
    );
    final userModel = UserModel(
      id: '1',
      email: 'test@example.com',
      firstname: 'Test',
    );

    test('should return UserState.data when login is successful', () async {
      when(mockClient.login(authRequest)).thenAnswer((_) async => userModel);

      final result = await dataSource.login(authRequest);

      expect(result, isA<UserStateData>());
      result.when(
        data: (user) {
          expect(user.id, '1');
          expect(user.name, 'Test');
        },
        invalidEmailError: () => fail('Should not be invalidEmailError'),
        passwordEmptyError: () => fail('Should not be passwordEmptyError'),
        badCredentialsError: () => fail('Should not be badCredentialsError'),
        networkError: () => fail('Should not be networkError'),
        defaultError: (_, _) => fail('Should not be defaultError'),
      );
      verify(mockClient.login(authRequest));
    });

    test('should return networkError when connection timeout occurs', () async {
      final dioException = DioException(
        requestOptions: RequestOptions(),
        type: DioExceptionType.connectionTimeout,
      );
      when(mockClient.login(authRequest)).thenThrow(dioException);

      final result = await dataSource.login(authRequest);

      expect(result, const UserState.networkError());
    });

    test('should return badCredentialsError when status code is 401', () async {
      final dioException = DioException(
        requestOptions: RequestOptions(),
        response: Response(requestOptions: RequestOptions(), statusCode: 401),
      );
      when(mockClient.login(authRequest)).thenThrow(dioException);

      final result = await dataSource.login(authRequest);

      expect(result, const UserState.badCredentialsError());
    });

    test(
      'should return defaultError for other DioException status codes',
      () async {
        final dioException = DioException(
          requestOptions: RequestOptions(),
          response: Response(requestOptions: RequestOptions(), statusCode: 500),
        );
        when(mockClient.login(authRequest)).thenThrow(dioException);

        final result = await dataSource.login(authRequest);

        expect(result, isA<UserStateDefaultError>());
        result.when(
          data: (_) => fail('Should not be data'),
          invalidEmailError: () => fail('Should not be invalidEmailError'),
          passwordEmptyError: () => fail('Should not be passwordEmptyError'),
          badCredentialsError: () => fail('Should not be badCredentialsError'),
          networkError: () => fail('Should not be networkError'),
          defaultError: (ex, _) {
            expect(ex, dioException);
          },
        );
      },
    );

    test(
      'should return defaultError when generic Exception is thrown',
      () async {
        final exception = Exception('Generic error');
        when(mockClient.login(authRequest)).thenThrow(exception);

        final result = await dataSource.login(authRequest);

        expect(result, isA<UserStateDefaultError>());
        result.when(
          data: (_) => fail('Should not be data'),
          invalidEmailError: () => fail('Should not be invalidEmailError'),
          passwordEmptyError: () => fail('Should not be passwordEmptyError'),
          badCredentialsError: () => fail('Should not be badCredentialsError'),
          networkError: () => fail('Should not be networkError'),
          defaultError: (ex, st) {
            expect(ex, exception);
            expect(st, isA<StackTrace>());
          },
        );
      },
    );

    test(
      'should return defaultError when non-Exception error is thrown',
      () async {
        const error = 'String error';
        when(mockClient.login(authRequest)).thenThrow(error);

        final result = await dataSource.login(authRequest);

        expect(result, isA<UserStateDefaultError>());
        result.when(
          data: (_) => fail('Should not be data'),
          invalidEmailError: () => fail('Should not be invalidEmailError'),
          passwordEmptyError: () => fail('Should not be passwordEmptyError'),
          badCredentialsError: () => fail('Should not be badCredentialsError'),
          networkError: () => fail('Should not be networkError'),
          defaultError: (ex, _) {
            expect(ex, isA<Exception>());
            expect(ex.toString(), contains('String error'));
          },
        );
      },
    );
  });
}
