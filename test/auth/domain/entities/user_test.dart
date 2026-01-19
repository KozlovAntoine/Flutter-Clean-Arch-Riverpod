import 'package:flutter_test/flutter_test.dart';
import 'package:tuto_riverpod_clean_arch/auth/domain/entities/user.dart';

void main() {
  group('UserEntity', () {
    test('should create UserEntity with id and name', () {
      final user = UserEntity(id: '1', name: 'Test User');

      expect(user.id, '1');
      expect(user.name, 'Test User');
    });
  });

  group('UserState', () {
    test('should create UserStateData', () {
      final user = UserEntity(id: '1', name: 'Test User');
      final state = UserState.data(user);

      expect(state, isA<UserStateData>());
      state.when(
        data: (u) => expect(u, user),
        invalidEmailError: () => fail('Should not be invalidEmailError'),
        passwordEmptyError: () => fail('Should not be passwordEmptyError'),
        badCredentialsError: () => fail('Should not be badCredentialsError'),
        networkError: () => fail('Should not be networkError'),
        defaultError: (_, _) => fail('Should not be defaultError'),
      );
    });

    test('should create UserStateInvalidEmailError', () {
      const state = UserState.invalidEmailError();

      expect(state, isA<UserStateInvalidEmailError>());
    });

    test('should create UserStatePasswordEmptyError', () {
      const state = UserState.passwordEmptyError();

      expect(state, isA<UserStatePasswordEmptyError>());
    });

    test('should create UserStateBadCredentialsError', () {
      const state = UserState.badCredentialsError();

      expect(state, isA<UserStateBadCredentialsError>());
    });

    test('should create UserStateNetworkError', () {
      const state = UserState.networkError();

      expect(state, isA<UserStateNetworkError>());
    });

    test(
      'should create UserStateDefaultError with exception and stackTrace',
      () {
        final exception = Exception('Test error');
        final stackTrace = StackTrace.current;
        final state = UserState.defaultError(
          exception: exception,
          stackTrace: stackTrace,
        );

        expect(state, isA<UserStateDefaultError>());
        state.when(
          data: (_) => fail('Should not be data'),
          invalidEmailError: () => fail('Should not be invalidEmailError'),
          passwordEmptyError: () => fail('Should not be passwordEmptyError'),
          badCredentialsError: () => fail('Should not be badCredentialsError'),
          networkError: () => fail('Should not be networkError'),
          defaultError: (ex, st) {
            expect(ex, exception);
            expect(st, stackTrace);
          },
        );
      },
    );

    test(
      'should create UserStateDefaultError without exception and stackTrace',
      () {
        const state = UserState.defaultError();

        expect(state, isA<UserStateDefaultError>());
        state.when(
          data: (_) => fail('Should not be data'),
          invalidEmailError: () => fail('Should not be invalidEmailError'),
          passwordEmptyError: () => fail('Should not be passwordEmptyError'),
          badCredentialsError: () => fail('Should not be badCredentialsError'),
          networkError: () => fail('Should not be networkError'),
          defaultError: (ex, st) {
            expect(ex, isNull);
            expect(st, isNull);
          },
        );
      },
    );
  });
}
