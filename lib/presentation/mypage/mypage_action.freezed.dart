// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'mypage_action.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MypageAction<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() refresh,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? refresh,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? refresh,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Refresh<T> value) refresh,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Refresh<T> value)? refresh,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Refresh<T> value)? refresh,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MypageActionCopyWith<T, $Res> {
  factory $MypageActionCopyWith(
          MypageAction<T> value, $Res Function(MypageAction<T>) then) =
      _$MypageActionCopyWithImpl<T, $Res, MypageAction<T>>;
}

/// @nodoc
class _$MypageActionCopyWithImpl<T, $Res, $Val extends MypageAction<T>>
    implements $MypageActionCopyWith<T, $Res> {
  _$MypageActionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$RefreshCopyWith<T, $Res> {
  factory _$$RefreshCopyWith(
          _$Refresh<T> value, $Res Function(_$Refresh<T>) then) =
      __$$RefreshCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$RefreshCopyWithImpl<T, $Res>
    extends _$MypageActionCopyWithImpl<T, $Res, _$Refresh<T>>
    implements _$$RefreshCopyWith<T, $Res> {
  __$$RefreshCopyWithImpl(
      _$Refresh<T> _value, $Res Function(_$Refresh<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Refresh<T> implements Refresh<T> {
  const _$Refresh();

  @override
  String toString() {
    return 'MypageAction<$T>.refresh()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Refresh<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() refresh,
  }) {
    return refresh();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? refresh,
  }) {
    return refresh?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? refresh,
    required TResult orElse(),
  }) {
    if (refresh != null) {
      return refresh();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Refresh<T> value) refresh,
  }) {
    return refresh(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Refresh<T> value)? refresh,
  }) {
    return refresh?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Refresh<T> value)? refresh,
    required TResult orElse(),
  }) {
    if (refresh != null) {
      return refresh(this);
    }
    return orElse();
  }
}

abstract class Refresh<T> implements MypageAction<T> {
  const factory Refresh() = _$Refresh<T>;
}
