import 'package:flutter_test/flutter_test.dart';
import 'package:tuto_riverpod_clean_arch/auth/data/models/auth_request.dart';

void main() {
  group('AuthRequest', () {
    test('should create AuthRequest with email and password', () {
      final authRequest = AuthRequest(
        email: 'test@example.com',
        password: 'password123',
      );

      expect(authRequest.email, 'test@example.com');
      expect(authRequest.password, 'password123');
    });

    test('should convert AuthRequest to json', () {
      final authRequest = AuthRequest(
        email: 'test@example.com',
        password: 'password123',
      );

      final json = authRequest.toJson();

      expect(json['email'], 'test@example.com');
      expect(json['password'], 'password123');
    });
  });
}
