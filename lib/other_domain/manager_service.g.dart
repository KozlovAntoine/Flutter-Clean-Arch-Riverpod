// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'manager_service.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(isManager)
const isManagerProvider = IsManagerProvider._();

final class IsManagerProvider extends $FunctionalProvider<bool, bool, bool>
    with $Provider<bool> {
  const IsManagerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'isManagerProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$isManagerHash();

  @$internal
  @override
  $ProviderElement<bool> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  bool create(Ref ref) {
    return isManager(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(bool value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<bool>(value),
    );
  }
}

String _$isManagerHash() => r'fad1c3e378e99493a29bcf3b2a409defdeaca8f7';
