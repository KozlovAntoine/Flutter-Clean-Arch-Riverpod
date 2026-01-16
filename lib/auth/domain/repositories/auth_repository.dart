import '../entities/user.dart';

abstract class AuthRepository {
  Future<UserState> login({required String email, required String password});
}
