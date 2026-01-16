import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';

class UserEntity {
  final String id;
  final String name;

  UserEntity({required this.id, required this.name});
}

@freezed
sealed class UserState with _$UserState {
  const factory UserState.data(UserEntity user) = UserStateData;

  const factory UserState.invalidEmailError() = UserStateInvalidEmailError;

  const factory UserState.passwordEmptyError() = UserStatePasswordEmptyError;

  const factory UserState.badCredentialsError() = UserStateBadCredentialsError;

  const factory UserState.networkError() = UserStateNetworkError;

  const factory UserState.defaultError({
    Exception? exception,
    StackTrace? stackTrace,
  }) = UserStateDefaultError;
}
