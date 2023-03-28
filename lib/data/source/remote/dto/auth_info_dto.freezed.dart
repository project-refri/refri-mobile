// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_info_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AuthInfoDto _$AuthInfoDtoFromJson(Map<String, dynamic> json) {
  return _AuthInfoDto.fromJson(json);
}

/// @nodoc
mixin _$AuthInfoDto {
  @JsonKey(name: "is_exist")
  bool? get isExist => throw _privateConstructorUsedError;
  @JsonKey(name: "token")
  Token? get token => throw _privateConstructorUsedError;
  @JsonKey(name: "user")
  UserInfoDto? get userInfoDto => throw _privateConstructorUsedError;
  @JsonKey(name: "register_token")
  String? get registerToken => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AuthInfoDtoCopyWith<AuthInfoDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthInfoDtoCopyWith<$Res> {
  factory $AuthInfoDtoCopyWith(
          AuthInfoDto value, $Res Function(AuthInfoDto) then) =
      _$AuthInfoDtoCopyWithImpl<$Res, AuthInfoDto>;
  @useResult
  $Res call(
      {@JsonKey(name: "is_exist") bool? isExist,
      @JsonKey(name: "token") Token? token,
      @JsonKey(name: "user") UserInfoDto? userInfoDto,
      @JsonKey(name: "register_token") String? registerToken});

  $UserInfoDtoCopyWith<$Res>? get userInfoDto;
}

/// @nodoc
class _$AuthInfoDtoCopyWithImpl<$Res, $Val extends AuthInfoDto>
    implements $AuthInfoDtoCopyWith<$Res> {
  _$AuthInfoDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isExist = freezed,
    Object? token = freezed,
    Object? userInfoDto = freezed,
    Object? registerToken = freezed,
  }) {
    return _then(_value.copyWith(
      isExist: freezed == isExist
          ? _value.isExist
          : isExist // ignore: cast_nullable_to_non_nullable
              as bool?,
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as Token?,
      userInfoDto: freezed == userInfoDto
          ? _value.userInfoDto
          : userInfoDto // ignore: cast_nullable_to_non_nullable
              as UserInfoDto?,
      registerToken: freezed == registerToken
          ? _value.registerToken
          : registerToken // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserInfoDtoCopyWith<$Res>? get userInfoDto {
    if (_value.userInfoDto == null) {
      return null;
    }

    return $UserInfoDtoCopyWith<$Res>(_value.userInfoDto!, (value) {
      return _then(_value.copyWith(userInfoDto: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_AuthInfoDtoCopyWith<$Res>
    implements $AuthInfoDtoCopyWith<$Res> {
  factory _$$_AuthInfoDtoCopyWith(
          _$_AuthInfoDto value, $Res Function(_$_AuthInfoDto) then) =
      __$$_AuthInfoDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "is_exist") bool? isExist,
      @JsonKey(name: "token") Token? token,
      @JsonKey(name: "user") UserInfoDto? userInfoDto,
      @JsonKey(name: "register_token") String? registerToken});

  @override
  $UserInfoDtoCopyWith<$Res>? get userInfoDto;
}

/// @nodoc
class __$$_AuthInfoDtoCopyWithImpl<$Res>
    extends _$AuthInfoDtoCopyWithImpl<$Res, _$_AuthInfoDto>
    implements _$$_AuthInfoDtoCopyWith<$Res> {
  __$$_AuthInfoDtoCopyWithImpl(
      _$_AuthInfoDto _value, $Res Function(_$_AuthInfoDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isExist = freezed,
    Object? token = freezed,
    Object? userInfoDto = freezed,
    Object? registerToken = freezed,
  }) {
    return _then(_$_AuthInfoDto(
      isExist: freezed == isExist
          ? _value.isExist
          : isExist // ignore: cast_nullable_to_non_nullable
              as bool?,
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as Token?,
      userInfoDto: freezed == userInfoDto
          ? _value.userInfoDto
          : userInfoDto // ignore: cast_nullable_to_non_nullable
              as UserInfoDto?,
      registerToken: freezed == registerToken
          ? _value.registerToken
          : registerToken // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AuthInfoDto implements _AuthInfoDto {
  const _$_AuthInfoDto(
      {@JsonKey(name: "is_exist") this.isExist,
      @JsonKey(name: "token") this.token,
      @JsonKey(name: "user") this.userInfoDto,
      @JsonKey(name: "register_token") this.registerToken});

  factory _$_AuthInfoDto.fromJson(Map<String, dynamic> json) =>
      _$$_AuthInfoDtoFromJson(json);

  @override
  @JsonKey(name: "is_exist")
  final bool? isExist;
  @override
  @JsonKey(name: "token")
  final Token? token;
  @override
  @JsonKey(name: "user")
  final UserInfoDto? userInfoDto;
  @override
  @JsonKey(name: "register_token")
  final String? registerToken;

  @override
  String toString() {
    return 'AuthInfoDto(isExist: $isExist, token: $token, userInfoDto: $userInfoDto, registerToken: $registerToken)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthInfoDto &&
            (identical(other.isExist, isExist) || other.isExist == isExist) &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.userInfoDto, userInfoDto) ||
                other.userInfoDto == userInfoDto) &&
            (identical(other.registerToken, registerToken) ||
                other.registerToken == registerToken));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, isExist, token, userInfoDto, registerToken);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AuthInfoDtoCopyWith<_$_AuthInfoDto> get copyWith =>
      __$$_AuthInfoDtoCopyWithImpl<_$_AuthInfoDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AuthInfoDtoToJson(
      this,
    );
  }
}

abstract class _AuthInfoDto implements AuthInfoDto {
  const factory _AuthInfoDto(
          {@JsonKey(name: "is_exist") final bool? isExist,
          @JsonKey(name: "token") final Token? token,
          @JsonKey(name: "user") final UserInfoDto? userInfoDto,
          @JsonKey(name: "register_token") final String? registerToken}) =
      _$_AuthInfoDto;

  factory _AuthInfoDto.fromJson(Map<String, dynamic> json) =
      _$_AuthInfoDto.fromJson;

  @override
  @JsonKey(name: "is_exist")
  bool? get isExist;
  @override
  @JsonKey(name: "token")
  Token? get token;
  @override
  @JsonKey(name: "user")
  UserInfoDto? get userInfoDto;
  @override
  @JsonKey(name: "register_token")
  String? get registerToken;
  @override
  @JsonKey(ignore: true)
  _$$_AuthInfoDtoCopyWith<_$_AuthInfoDto> get copyWith =>
      throw _privateConstructorUsedError;
}
