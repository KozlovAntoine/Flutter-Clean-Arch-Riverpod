abstract class UseCase<T, Params> {
  Future<T> execute(Params params);
}

abstract class UseCaseNoParams<T> {
  Future<T> execute();
}

abstract class SyncUseCase<T, Params> {
  T execute(Params params);
}

abstract class SyncUseCaseNoParams<T> {
  T execute();
}
