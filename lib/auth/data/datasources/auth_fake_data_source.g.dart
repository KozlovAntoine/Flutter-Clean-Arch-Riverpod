// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_fake_data_source.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(authFakeDataSource)
const authFakeDataSourceProvider = AuthFakeDataSourceProvider._();

final class AuthFakeDataSourceProvider
    extends
        $FunctionalProvider<
          AuthFakeDataSource,
          AuthFakeDataSource,
          AuthFakeDataSource
        >
    with $Provider<AuthFakeDataSource> {
  const AuthFakeDataSourceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'authFakeDataSourceProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$authFakeDataSourceHash();

  @$internal
  @override
  $ProviderElement<AuthFakeDataSource> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  AuthFakeDataSource create(Ref ref) {
    return authFakeDataSource(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AuthFakeDataSource value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AuthFakeDataSource>(value),
    );
  }
}

String _$authFakeDataSourceHash() =>
    r'f0f21722d06f6679fe82c73f16f7f9e6edcdb1f1';
