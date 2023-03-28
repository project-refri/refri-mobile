// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'mypage_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MypageState _$MypageStateFromJson(Map<String, dynamic> json) {
  return _MypageState.fromJson(json);
}

/// @nodoc
mixin _$MypageState {
  UserInfo? get userInfo => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MypageStateCopyWith<MypageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MypageStateCopyWith<$Res> {
  factory $MypageStateCopyWith(
          MypageState value, $Res Function(MypageState) then) =
      _$MypageStateCopyWithImpl<$Res, MypageState>;
  @useResult
  $Res call({UserInfo? userInfo, bool isLoading, bool isError});

  $UserInfoCopyWith<$Res>? get userInfo;
}

/// @nodoc
class _$MypageStateCopyWithImpl<$Res, $Val extends MypageState>
    implements $MypageStateCopyWith<$Res> {
  _$MypageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userInfo = freezed,
    Object? isLoading = null,
    Object? isError = null,
  }) {
    return _then(_value.copyWith(
      userInfo: freezed == userInfo
          ? _value.userInfo
          : userInfo // ignore: cast_nullable_to_non_nullable
              as UserInfo?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserInfoCopyWith<$Res>? get userInfo {
    if (_value.userInfo == null) {
      return null;
    }

    return $UserInfoCopyWith<$Res>(_value.userInfo!, (value) {
      return _then(_value.copyWith(userInfo: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_MypageStateCopyWith<$Res>
    implements $MypageStateCopyWith<$Res> {
  factory _$$_MypageStateCopyWith(
          _$_MypageState value, $Res Function(_$_MypageState) then) =
      __$$_MypageStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({UserInfo? userInfo, bool isLoading, bool isError});

  @override
  $UserInfoCopyWith<$Res>? get userInfo;
}

/// @nodoc
class __$$_MypageStateCopyWithImpl<$Res>
    extends _$MypageStateCopyWithImpl<$Res, _$_MypageState>
    implements _$$_MypageStateCopyWith<$Res> {
  __$$_MypageStateCopyWithImpl(
      _$_MypageState _value, $Res Function(_$_MypageState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userInfo = freezed,
    Object? isLoading = null,
    Object? isError = null,
  }) {
    return _then(_$_MypageState(
      userInfo: freezed == userInfo
          ? _value.userInfo
          : userInfo // ignore: cast_nullable_to_non_nullable
              as UserInfo?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MypageState implements _MypageState {
  const _$_MypageState(
      {this.userInfo, this.isLoading = true, this.isError = false});

  factory _$_MypageState.fromJson(Map<String, dynamic> json) =>
      _$$_MypageStateFromJson(json);

  @override
  final UserInfo? userInfo;
  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final bool isError;

  @override
  String toString() {
    return 'MypageState(userInfo: $userInfo, isLoading: $isLoading, isError: $isError)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MypageState &&
            (identical(other.userInfo, userInfo) ||
                other.userInfo == userInfo) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isError, isError) || other.isError == isError));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, userInfo, isLoading, isError);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MypageStateCopyWith<_$_MypageState> get copyWith =>
      __$$_MypageStateCopyWithImpl<_$_MypageState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MypageStateToJson(
      this,
    );
  }
}

abstract class _MypageState implements MypageState {
  const factory _MypageState(
      {final UserInfo? userInfo,
      final bool isLoading,
      final bool isError}) = _$_MypageState;

  factory _MypageState.fromJson(Map<String, dynamic> json) =
      _$_MypageState.fromJson;

  @override
  UserInfo? get userInfo;
  @override
  bool get isLoading;
  @override
  bool get isError;
  @override
  @JsonKey(ignore: true)
  _$$_MypageStateCopyWith<_$_MypageState> get copyWith =>
      throw _privateConstructorUsedError;
}
