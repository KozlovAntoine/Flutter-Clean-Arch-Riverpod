import 'package:freezed_annotation/freezed_annotation.dart';

part 'connection_ui_state.freezed.dart';

@freezed
sealed class ConnectionUiState with _$ConnectionUiState {
  const factory ConnectionUiState.connected() = ConnectionUiStateConnected;

  const factory ConnectionUiState.disconnected() =
      ConnectionUiStateDisconnected;
}
