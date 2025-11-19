// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'test_feat_flow_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TestFeatFlowState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialTestFeatFlowState value) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialTestFeatFlowState value)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialTestFeatFlowState value)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TestFeatFlowStateCopyWith<$Res> {
  factory $TestFeatFlowStateCopyWith(
          TestFeatFlowState value, $Res Function(TestFeatFlowState) then) =
      _$TestFeatFlowStateCopyWithImpl<$Res, TestFeatFlowState>;
}

/// @nodoc
class _$TestFeatFlowStateCopyWithImpl<$Res, $Val extends TestFeatFlowState>
    implements $TestFeatFlowStateCopyWith<$Res> {
  _$TestFeatFlowStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TestFeatFlowState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialTestFeatFlowStateImplCopyWith<$Res> {
  factory _$$InitialTestFeatFlowStateImplCopyWith(
          _$InitialTestFeatFlowStateImpl value,
          $Res Function(_$InitialTestFeatFlowStateImpl) then) =
      __$$InitialTestFeatFlowStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialTestFeatFlowStateImplCopyWithImpl<$Res>
    extends _$TestFeatFlowStateCopyWithImpl<$Res,
        _$InitialTestFeatFlowStateImpl>
    implements _$$InitialTestFeatFlowStateImplCopyWith<$Res> {
  __$$InitialTestFeatFlowStateImplCopyWithImpl(
      _$InitialTestFeatFlowStateImpl _value,
      $Res Function(_$InitialTestFeatFlowStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of TestFeatFlowState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialTestFeatFlowStateImpl implements _InitialTestFeatFlowState {
  const _$InitialTestFeatFlowStateImpl();

  @override
  String toString() {
    return 'TestFeatFlowState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialTestFeatFlowStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialTestFeatFlowState value) initial,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialTestFeatFlowState value)? initial,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialTestFeatFlowState value)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _InitialTestFeatFlowState implements TestFeatFlowState {
  const factory _InitialTestFeatFlowState() = _$InitialTestFeatFlowStateImpl;
}
