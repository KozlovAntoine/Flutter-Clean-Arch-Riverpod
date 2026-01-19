import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:tuto_riverpod_clean_arch/auth/domain/entities/user.dart';
import 'package:tuto_riverpod_clean_arch/auth/domain/usecases/login_usecase.dart';
import 'package:tuto_riverpod_clean_arch/auth/domain/usecases/params/login_params.dart';

import '../../../mocks.mocks.dart';
import '../../../test_helpers.dart';

void main() {
  setUpAll(setupMockito);

  late LoginUseCase useCase;
  late MockAuthRepository mockRepository;

  setUp(() {
    mockRepository = MockAuthRepository();
    useCase = LoginUseCase(mockRepository);
  });

  group('LoginUseCase', () {
    const email = 'test@example.com';
    const password = 'password123';
    final userEntity = UserEntity(id: '1', name: 'Test User');

    test('should return UserState.data when login is successful', () async {
      final expectedState = UserState.data(userEntity);
      when(
        mockRepository.login(email: email, password: password),
      ).thenAnswer((_) async => expectedState);

      final result = await useCase.execute(
        LoginParams(email: email, password: password),
      );

      expect(result, expectedState);
      verify(mockRepository.login(email: email, password: password));
      verifyNoMoreInteractions(mockRepository);
    });

    test('should trim and lowercase email before calling repository', () async {
      final expectedState = UserState.data(userEntity);
      const emailWithSpaces = '  TEST@EXAMPLE.COM  ';
      when(
        mockRepository.login(email: email, password: password),
      ).thenAnswer((_) async => expectedState);

      await useCase.execute(
        LoginParams(email: emailWithSpaces, password: password),
      );

      verify(mockRepository.login(email: email, password: password));
    });

    test(
      'should return invalidEmailError when email does not contain @',
      () async {
        const invalidEmail = 'invalidemail';

        final result = await useCase.execute(
          LoginParams(email: invalidEmail, password: password),
        );

        expect(result, const UserState.invalidEmailError());
        verifyNever(
          mockRepository.login(
            email: anyNamed('email'),
            password: anyNamed('password'),
          ),
        );
      },
    );

    test('should return passwordEmptyError when password is empty', () async {
      final result = await useCase.execute(
        LoginParams(email: email, password: ''),
      );

      expect(result, const UserState.passwordEmptyError());
      verifyNever(
        mockRepository.login(
          email: anyNamed('email'),
          password: anyNamed('password'),
        ),
      );
    });

    test(
      'should return defaultError when repository throws exception',
      () async {
        final exception = Exception('Network error');
        when(
          mockRepository.login(email: email, password: password),
        ).thenThrow(exception);

        final result = await useCase.execute(
          LoginParams(email: email, password: password),
        );

        expect(result, isA<UserStateDefaultError>());
        final defaultError = result as UserStateDefaultError;
        expect(defaultError.exception, exception);
        expect(defaultError.stackTrace, isNotNull);
      },
    );

    test('should convert non-Exception errors to Exception', () async {
      const error = 'String error';
      when(
        mockRepository.login(email: email, password: password),
      ).thenThrow(error);

      final result = await useCase.execute(
        LoginParams(email: email, password: password),
      );

      expect(result, isA<UserStateDefaultError>());
      final defaultError = result as UserStateDefaultError;
      expect(defaultError.exception, isA<Exception>());
      expect(defaultError.exception.toString(), contains('String error'));
      expect(defaultError.stackTrace, isNotNull);
    });
  });
}
