import 'package:mockito/mockito.dart';
import 'package:tuto_riverpod_clean_arch/auth/domain/entities/user.dart';

void setupMockito() {
  provideDummy<UserState>(const UserState.defaultError());
}
