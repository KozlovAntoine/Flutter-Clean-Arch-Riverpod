// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(accountDisplayState)
const accountDisplayStateProvider = AccountDisplayStateProvider._();

final class AccountDisplayStateProvider
    extends
        $FunctionalProvider<
          AccountDisplayState,
          AccountDisplayState,
          AccountDisplayState
        >
    with $Provider<AccountDisplayState> {
  const AccountDisplayStateProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'accountDisplayStateProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$accountDisplayStateHash();

  @$internal
  @override
  $ProviderElement<AccountDisplayState> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  AccountDisplayState create(Ref ref) {
    return accountDisplayState(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AccountDisplayState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AccountDisplayState>(value),
    );
  }
}

String _$accountDisplayStateHash() =>
    r'8cb1c769138c1c3b6b81002d4b1f392a35f2d5d1';

@ProviderFor(accountNotifier)
const accountProvider = AccountNotifierProvider._();

final class AccountNotifierProvider
    extends
        $FunctionalProvider<AccountNotifier, AccountNotifier, AccountNotifier>
    with $Provider<AccountNotifier> {
  const AccountNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'accountProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$accountNotifierHash();

  @$internal
  @override
  $ProviderElement<AccountNotifier> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  AccountNotifier create(Ref ref) {
    return accountNotifier(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AccountNotifier value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AccountNotifier>(value),
    );
  }
}

String _$accountNotifierHash() => r'ef63eb4a96193b98a3100b921cbac71d279405a7';
