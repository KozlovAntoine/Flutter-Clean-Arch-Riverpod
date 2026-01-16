import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:tuto_riverpod_clean_arch/auth/data/repositories/auth_repository_impl.dart';
import 'package:tuto_riverpod_clean_arch/auth/domain/usecases/login_usecase.dart';

part 'usecases_providers.g.dart';

@riverpod
LoginUseCase loginUseCase(Ref ref) {
  final repository = ref.read(authRepositoryProvider);
  return LoginUseCase(repository);
}
