// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AuthInfo _$AuthInfoFromJson(Map<String, dynamic> json) {
  return _AuthInfo.fromJson(json);
}

/// @nodoc
mixin _$AuthInfo {
  bool get isExist => throw _privateConstructorUsedError;
  Token get token => throw _privateConstructorUsedError;
  UserInfo get userInfo => throw _privateConstructorUsedError;
  String? get registerToken => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AuthInfoCopyWith<AuthInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthInfoCopyWith<$Res> {
  factory $AuthInfoCopyWith(AuthInfo value, $Res Function(AuthInfo) then) =
      _$AuthInfoCopyWithImpl<$Res, AuthInfo>;
  @useResult
  $Res call(
      {bool isExist, Token token, UserInfo userInfo, String? registerToken});

  $UserInfoCopyWith<$Res> get userInfo;
}

/// @nodoc
class _$AuthInfoCopyWithImpl<$Res, $Val extends AuthInfo>
    implements $AuthInfoCopyWith<$Res> {
  _$AuthInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isExist = null,
    Object? token = null,
    Object? userInfo = null,
    Object? registerToken = freezed,
  }) {
    return _then(_value.copyWith(
      isExist: null == isExist
          ? _value.isExist
          : isExist // ignore: cast_nullable_to_non_nullable
              as bool,
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as Token,
      userInfo: null == userInfo
          ? _value.userInfo
          : userInfo // ignore: cast_nullable_to_non_nullable
              as UserInfo,
      registerToken: freezed == registerToken
          ? _value.registerToken
          : registerToken // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserInfoCopyWith<$Res> get userInfo {
    return $UserInfoCopyWith<$Res>(_value.userInfo, (value) {
      return _then(_value.copyWith(userInfo: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_AuthInfoCopyWith<$Res> implements $AuthInfoCopyWith<$Res> {
  factory _$$_AuthInfoCopyWith(
          _$_AuthInfo value, $Res Function(_$_AuthInfo) then) =
      __$$_AuthInfoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isExist, Token token, UserInfo userInfo, String? registerToken});

  @override
  $UserInfoCopyWith<$Res> get userInfo;
}

/// @nodoc
class __$$_AuthInfoCopyWithImpl<$Res>
    extends _$AuthInfoCopyWithImpl<$Res, _$_AuthInfo>
    implements _$$_AuthInfoCopyWith<$Res> {
  __$$_AuthInfoCopyWithImpl(
      _$_AuthInfo _value, $Res Function(_$_AuthInfo) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isExist = null,
    Object? token = null,
    Object? userInfo = null,
    Object? registerToken = freezed,
  }) {
    return _then(_$_AuthInfo(
      isExist: null == isExist
          ? _value.isExist
          : isExist // ignore: cast_nullable_to_non_nullable
              as bool,
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as Token,
      userInfo: null == userInfo
          ? _value.userInfo
          : userInfo // ignore: cast_nullable_to_non_nullable
              as UserInfo,
      registerToken: freezed == registerToken
          ? _value.registerToken
          : registerToken // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AuthInfo implements _AuthInfo {
  const _$_AuthInfo(
      {required this.isExist,
      required this.token,
      required this.userInfo,
      required this.registerToken});

  factory _$_AuthInfo.fromJson(Map<String, dynamic> json) =>
      _$$_AuthInfoFromJson(json);

  @override
  final bool isExist;
  @override
  final Token token;
  @override
  final UserInfo userInfo;
  @override
  final String? registerToken;

  @override
  String toString() {
    return 'AuthInfo(isExist: $isExist, token: $token, userInfo: $userInfo, registerToken: $registerToken)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthInfo &&
            (identical(other.isExist, isExist) || other.isExist == isExist) &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.userInfo, userInfo) ||
                other.userInfo == userInfo) &&
            (identical(other.registerToken, registerToken) ||
                other.registerToken == registerToken));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, isExist, token, userInfo, registerToken);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AuthInfoCopyWith<_$_AuthInfo> get copyWith =>
      __$$_AuthInfoCopyWithImpl<_$_AuthInfo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AuthInfoToJson(
      this,
    );
  }
}

abstract class _AuthInfo implements AuthInfo {
  const factory _AuthInfo(
      {required final bool isExist,
      required final Token token,
      required final UserInfo userInfo,
      required final String? registerToken}) = _$_AuthInfo;

  factory _AuthInfo.fromJson(Map<String, dynamic> json) = _$_AuthInfo.fromJson;

  @override
  bool get isExist;
  @override
  Token get token;
  @override
  UserInfo get userInfo;
  @override
  String? get registerToken;
  @override
  @JsonKey(ignore: true)
  _$$_AuthInfoCopyWith<_$_AuthInfo> get copyWith =>
      throw _privateConstructorUsedError;
}
