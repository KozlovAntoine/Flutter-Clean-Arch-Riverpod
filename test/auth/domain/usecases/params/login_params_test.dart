import 'package:flutter_test/flutter_test.dart';
import 'package:tuto_riverpod_clean_arch/auth/domain/usecases/params/login_params.dart';

void main() {
  group('LoginParams', () {
    test('should create LoginParams with email and password', () {
      final params = LoginParams(
        email: 'test@example.com',
        password: 'password123',
      );

      expect(params.email, 'test@example.com');
      expect(params.password, 'password123');
    });
  });
}
