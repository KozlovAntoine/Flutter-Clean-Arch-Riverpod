import 'package:tuto_riverpod_clean_arch/auth/domain/entities/user.dart';

abstract class AuthRepository {
  Future<UserState> login({required String email, required String password});
}
