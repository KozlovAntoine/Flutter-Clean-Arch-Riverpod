import 'package:flutter_test/flutter_test.dart';
import 'package:tuto_riverpod_clean_arch/auth/data/models/user_model.dart';
import 'package:tuto_riverpod_clean_arch/auth/domain/entities/user.dart';

void main() {
  group('UserModel', () {
    test('should create UserModel from json', () {
      final json = {
        'id': '1',
        'email': 'test@example.com',
        'firstname': 'Test',
      };

      final userModel = UserModel.fromJson(json);

      expect(userModel.id, '1');
      expect(userModel.email, 'test@example.com');
      expect(userModel.firstname, 'Test');
    });

    test('should convert UserModel to UserEntity', () {
      final userModel = UserModel(
        id: '1',
        email: 'test@example.com',
        firstname: 'Test',
      );

      final userEntity = userModel.toEntity();

      expect(userEntity, isA<UserEntity>());
      expect(userEntity.id, '1');
      expect(userEntity.name, 'Test');
    });
  });
}
