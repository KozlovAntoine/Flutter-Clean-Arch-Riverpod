import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_request.g.dart';

@JsonSerializable(createFactory: false)
class AuthRequest {
  AuthRequest({required this.email, required this.password});

  final String email;
  final String password;

  Map<String, dynamic> toJson() => _$AuthRequestToJson(this);
}
