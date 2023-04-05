// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_action.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LoginAction<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() googleLogin,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? googleLogin,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? googleLogin,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GoogleLogin<T> value) googleLogin,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GoogleLogin<T> value)? googleLogin,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GoogleLogin<T> value)? googleLogin,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginActionCopyWith<T, $Res> {
  factory $LoginActionCopyWith(
          LoginAction<T> value, $Res Function(LoginAction<T>) then) =
      _$LoginActionCopyWithImpl<T, $Res, LoginAction<T>>;
}

/// @nodoc
class _$LoginActionCopyWithImpl<T, $Res, $Val extends LoginAction<T>>
    implements $LoginActionCopyWith<T, $Res> {
  _$LoginActionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GoogleLoginCopyWith<T, $Res> {
  factory _$$GoogleLoginCopyWith(
          _$GoogleLogin<T> value, $Res Function(_$GoogleLogin<T>) then) =
      __$$GoogleLoginCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$GoogleLoginCopyWithImpl<T, $Res>
    extends _$LoginActionCopyWithImpl<T, $Res, _$GoogleLogin<T>>
    implements _$$GoogleLoginCopyWith<T, $Res> {
  __$$GoogleLoginCopyWithImpl(
      _$GoogleLogin<T> _value, $Res Function(_$GoogleLogin<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GoogleLogin<T> implements GoogleLogin<T> {
  const _$GoogleLogin();

  @override
  String toString() {
    return 'LoginAction<$T>.googleLogin()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GoogleLogin<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() googleLogin,
  }) {
    return googleLogin();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? googleLogin,
  }) {
    return googleLogin?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? googleLogin,
    required TResult orElse(),
  }) {
    if (googleLogin != null) {
      return googleLogin();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GoogleLogin<T> value) googleLogin,
  }) {
    return googleLogin(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GoogleLogin<T> value)? googleLogin,
  }) {
    return googleLogin?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GoogleLogin<T> value)? googleLogin,
    required TResult orElse(),
  }) {
    if (googleLogin != null) {
      return googleLogin(this);
    }
    return orElse();
  }
}

abstract class GoogleLogin<T> implements LoginAction<T> {
  const factory GoogleLogin() = _$GoogleLogin<T>;
}
