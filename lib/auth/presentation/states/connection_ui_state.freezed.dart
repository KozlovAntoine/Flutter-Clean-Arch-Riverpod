// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'connection_ui_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ConnectionUiState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ConnectionUiState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ConnectionUiState()';
}


}

/// @nodoc
class $ConnectionUiStateCopyWith<$Res>  {
$ConnectionUiStateCopyWith(ConnectionUiState _, $Res Function(ConnectionUiState) __);
}


/// Adds pattern-matching-related methods to [ConnectionUiState].
extension ConnectionUiStatePatterns on ConnectionUiState {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( ConnectionUiStateConnected value)?  connected,TResult Function( ConnectionUiStateDisconnected value)?  disconnected,required TResult orElse(),}){
final _that = this;
switch (_that) {
case ConnectionUiStateConnected() when connected != null:
return connected(_that);case ConnectionUiStateDisconnected() when disconnected != null:
return disconnected(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( ConnectionUiStateConnected value)  connected,required TResult Function( ConnectionUiStateDisconnected value)  disconnected,}){
final _that = this;
switch (_that) {
case ConnectionUiStateConnected():
return connected(_that);case ConnectionUiStateDisconnected():
return disconnected(_that);}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( ConnectionUiStateConnected value)?  connected,TResult? Function( ConnectionUiStateDisconnected value)?  disconnected,}){
final _that = this;
switch (_that) {
case ConnectionUiStateConnected() when connected != null:
return connected(_that);case ConnectionUiStateDisconnected() when disconnected != null:
return disconnected(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  connected,TResult Function()?  disconnected,required TResult orElse(),}) {final _that = this;
switch (_that) {
case ConnectionUiStateConnected() when connected != null:
return connected();case ConnectionUiStateDisconnected() when disconnected != null:
return disconnected();case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  connected,required TResult Function()  disconnected,}) {final _that = this;
switch (_that) {
case ConnectionUiStateConnected():
return connected();case ConnectionUiStateDisconnected():
return disconnected();}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  connected,TResult? Function()?  disconnected,}) {final _that = this;
switch (_that) {
case ConnectionUiStateConnected() when connected != null:
return connected();case ConnectionUiStateDisconnected() when disconnected != null:
return disconnected();case _:
  return null;

}
}

}

/// @nodoc


class ConnectionUiStateConnected implements ConnectionUiState {
  const ConnectionUiStateConnected();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ConnectionUiStateConnected);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ConnectionUiState.connected()';
}


}




/// @nodoc


class ConnectionUiStateDisconnected implements ConnectionUiState {
  const ConnectionUiStateDisconnected();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ConnectionUiStateDisconnected);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ConnectionUiState.disconnected()';
}


}




// dart format on
