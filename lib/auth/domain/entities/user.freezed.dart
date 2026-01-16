// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$UserState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UserState()';
}


}

/// @nodoc
class $UserStateCopyWith<$Res>  {
$UserStateCopyWith(UserState _, $Res Function(UserState) __);
}


/// Adds pattern-matching-related methods to [UserState].
extension UserStatePatterns on UserState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( UserStateData value)?  data,TResult Function( UserStateInvalidEmailError value)?  invalidEmailError,TResult Function( UserStatePasswordEmptyError value)?  passwordEmptyError,TResult Function( UserStateBadCredentialsError value)?  badCredentialsError,TResult Function( UserStateNetworkError value)?  networkError,TResult Function( UserStateDefaultError value)?  defaultError,required TResult orElse(),}){
final _that = this;
switch (_that) {
case UserStateData() when data != null:
return data(_that);case UserStateInvalidEmailError() when invalidEmailError != null:
return invalidEmailError(_that);case UserStatePasswordEmptyError() when passwordEmptyError != null:
return passwordEmptyError(_that);case UserStateBadCredentialsError() when badCredentialsError != null:
return badCredentialsError(_that);case UserStateNetworkError() when networkError != null:
return networkError(_that);case UserStateDefaultError() when defaultError != null:
return defaultError(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( UserStateData value)  data,required TResult Function( UserStateInvalidEmailError value)  invalidEmailError,required TResult Function( UserStatePasswordEmptyError value)  passwordEmptyError,required TResult Function( UserStateBadCredentialsError value)  badCredentialsError,required TResult Function( UserStateNetworkError value)  networkError,required TResult Function( UserStateDefaultError value)  defaultError,}){
final _that = this;
switch (_that) {
case UserStateData():
return data(_that);case UserStateInvalidEmailError():
return invalidEmailError(_that);case UserStatePasswordEmptyError():
return passwordEmptyError(_that);case UserStateBadCredentialsError():
return badCredentialsError(_that);case UserStateNetworkError():
return networkError(_that);case UserStateDefaultError():
return defaultError(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( UserStateData value)?  data,TResult? Function( UserStateInvalidEmailError value)?  invalidEmailError,TResult? Function( UserStatePasswordEmptyError value)?  passwordEmptyError,TResult? Function( UserStateBadCredentialsError value)?  badCredentialsError,TResult? Function( UserStateNetworkError value)?  networkError,TResult? Function( UserStateDefaultError value)?  defaultError,}){
final _that = this;
switch (_that) {
case UserStateData() when data != null:
return data(_that);case UserStateInvalidEmailError() when invalidEmailError != null:
return invalidEmailError(_that);case UserStatePasswordEmptyError() when passwordEmptyError != null:
return passwordEmptyError(_that);case UserStateBadCredentialsError() when badCredentialsError != null:
return badCredentialsError(_that);case UserStateNetworkError() when networkError != null:
return networkError(_that);case UserStateDefaultError() when defaultError != null:
return defaultError(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( UserEntity user)?  data,TResult Function()?  invalidEmailError,TResult Function()?  passwordEmptyError,TResult Function()?  badCredentialsError,TResult Function()?  networkError,TResult Function( Exception? exception,  StackTrace? stackTrace)?  defaultError,required TResult orElse(),}) {final _that = this;
switch (_that) {
case UserStateData() when data != null:
return data(_that.user);case UserStateInvalidEmailError() when invalidEmailError != null:
return invalidEmailError();case UserStatePasswordEmptyError() when passwordEmptyError != null:
return passwordEmptyError();case UserStateBadCredentialsError() when badCredentialsError != null:
return badCredentialsError();case UserStateNetworkError() when networkError != null:
return networkError();case UserStateDefaultError() when defaultError != null:
return defaultError(_that.exception,_that.stackTrace);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( UserEntity user)  data,required TResult Function()  invalidEmailError,required TResult Function()  passwordEmptyError,required TResult Function()  badCredentialsError,required TResult Function()  networkError,required TResult Function( Exception? exception,  StackTrace? stackTrace)  defaultError,}) {final _that = this;
switch (_that) {
case UserStateData():
return data(_that.user);case UserStateInvalidEmailError():
return invalidEmailError();case UserStatePasswordEmptyError():
return passwordEmptyError();case UserStateBadCredentialsError():
return badCredentialsError();case UserStateNetworkError():
return networkError();case UserStateDefaultError():
return defaultError(_that.exception,_that.stackTrace);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( UserEntity user)?  data,TResult? Function()?  invalidEmailError,TResult? Function()?  passwordEmptyError,TResult? Function()?  badCredentialsError,TResult? Function()?  networkError,TResult? Function( Exception? exception,  StackTrace? stackTrace)?  defaultError,}) {final _that = this;
switch (_that) {
case UserStateData() when data != null:
return data(_that.user);case UserStateInvalidEmailError() when invalidEmailError != null:
return invalidEmailError();case UserStatePasswordEmptyError() when passwordEmptyError != null:
return passwordEmptyError();case UserStateBadCredentialsError() when badCredentialsError != null:
return badCredentialsError();case UserStateNetworkError() when networkError != null:
return networkError();case UserStateDefaultError() when defaultError != null:
return defaultError(_that.exception,_that.stackTrace);case _:
  return null;

}
}

}

/// @nodoc


class UserStateData implements UserState {
  const UserStateData(this.user);
  

 final  UserEntity user;

/// Create a copy of UserState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserStateDataCopyWith<UserStateData> get copyWith => _$UserStateDataCopyWithImpl<UserStateData>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserStateData&&(identical(other.user, user) || other.user == user));
}


@override
int get hashCode => Object.hash(runtimeType,user);

@override
String toString() {
  return 'UserState.data(user: $user)';
}


}

/// @nodoc
abstract mixin class $UserStateDataCopyWith<$Res> implements $UserStateCopyWith<$Res> {
  factory $UserStateDataCopyWith(UserStateData value, $Res Function(UserStateData) _then) = _$UserStateDataCopyWithImpl;
@useResult
$Res call({
 UserEntity user
});




}
/// @nodoc
class _$UserStateDataCopyWithImpl<$Res>
    implements $UserStateDataCopyWith<$Res> {
  _$UserStateDataCopyWithImpl(this._self, this._then);

  final UserStateData _self;
  final $Res Function(UserStateData) _then;

/// Create a copy of UserState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? user = null,}) {
  return _then(UserStateData(
null == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as UserEntity,
  ));
}


}

/// @nodoc


class UserStateInvalidEmailError implements UserState {
  const UserStateInvalidEmailError();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserStateInvalidEmailError);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UserState.invalidEmailError()';
}


}




/// @nodoc


class UserStatePasswordEmptyError implements UserState {
  const UserStatePasswordEmptyError();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserStatePasswordEmptyError);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UserState.passwordEmptyError()';
}


}




/// @nodoc


class UserStateBadCredentialsError implements UserState {
  const UserStateBadCredentialsError();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserStateBadCredentialsError);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UserState.badCredentialsError()';
}


}




/// @nodoc


class UserStateNetworkError implements UserState {
  const UserStateNetworkError();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserStateNetworkError);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UserState.networkError()';
}


}




/// @nodoc


class UserStateDefaultError implements UserState {
  const UserStateDefaultError({this.exception, this.stackTrace});
  

 final  Exception? exception;
 final  StackTrace? stackTrace;

/// Create a copy of UserState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserStateDefaultErrorCopyWith<UserStateDefaultError> get copyWith => _$UserStateDefaultErrorCopyWithImpl<UserStateDefaultError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserStateDefaultError&&(identical(other.exception, exception) || other.exception == exception)&&(identical(other.stackTrace, stackTrace) || other.stackTrace == stackTrace));
}


@override
int get hashCode => Object.hash(runtimeType,exception,stackTrace);

@override
String toString() {
  return 'UserState.defaultError(exception: $exception, stackTrace: $stackTrace)';
}


}

/// @nodoc
abstract mixin class $UserStateDefaultErrorCopyWith<$Res> implements $UserStateCopyWith<$Res> {
  factory $UserStateDefaultErrorCopyWith(UserStateDefaultError value, $Res Function(UserStateDefaultError) _then) = _$UserStateDefaultErrorCopyWithImpl;
@useResult
$Res call({
 Exception? exception, StackTrace? stackTrace
});




}
/// @nodoc
class _$UserStateDefaultErrorCopyWithImpl<$Res>
    implements $UserStateDefaultErrorCopyWith<$Res> {
  _$UserStateDefaultErrorCopyWithImpl(this._self, this._then);

  final UserStateDefaultError _self;
  final $Res Function(UserStateDefaultError) _then;

/// Create a copy of UserState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? exception = freezed,Object? stackTrace = freezed,}) {
  return _then(UserStateDefaultError(
exception: freezed == exception ? _self.exception : exception // ignore: cast_nullable_to_non_nullable
as Exception?,stackTrace: freezed == stackTrace ? _self.stackTrace : stackTrace // ignore: cast_nullable_to_non_nullable
as StackTrace?,
  ));
}


}

// dart format on
