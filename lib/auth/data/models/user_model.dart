import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tuto_riverpod_clean_arch/auth/domain/entities/user.dart';

part 'user_model.g.dart';

@JsonSerializable(createToJson: false)
class UserModel {
  UserModel({required this.id, required this.email, required this.firstname});

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);

  final String id;
  final String email;
  final String firstname;

  UserEntity toEntity() => UserEntity(name: firstname, id: id);
}
