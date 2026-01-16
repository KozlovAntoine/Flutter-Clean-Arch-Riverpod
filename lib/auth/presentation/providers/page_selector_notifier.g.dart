// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'page_selector_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(pageSelectorNotifier)
const pageSelectorProvider = PageSelectorNotifierProvider._();

final class PageSelectorNotifierProvider
    extends
        $FunctionalProvider<
          ConnectionUiState,
          ConnectionUiState,
          ConnectionUiState
        >
    with $Provider<ConnectionUiState> {
  const PageSelectorNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'pageSelectorProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$pageSelectorNotifierHash();

  @$internal
  @override
  $ProviderElement<ConnectionUiState> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  ConnectionUiState create(Ref ref) {
    return pageSelectorNotifier(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ConnectionUiState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ConnectionUiState>(value),
    );
  }
}

String _$pageSelectorNotifierHash() =>
    r'de6c3a5dfdd79ea98246362a2a2aef3ff816b17a';
