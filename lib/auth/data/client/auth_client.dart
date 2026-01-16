import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:tuto_riverpod_clean_arch/auth/data/models/auth_request.dart';
import 'package:tuto_riverpod_clean_arch/auth/data/models/user_model.dart';

part 'auth_client.g.dart';

@RestApi(baseUrl: "https://example.com/v1")
abstract class AuthClient {
  factory AuthClient(Dio dio, {String baseUrl}) = _AuthClient;

  @POST("/auth/login")
  Future<UserModel> login(@Body() AuthRequest body);
}
