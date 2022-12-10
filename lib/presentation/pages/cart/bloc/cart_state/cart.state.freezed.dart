// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'cart.state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CartStateTearOff {
  const _$CartStateTearOff();

  InitCartState init() {
    return const InitCartState();
  }

  ErrorCartState error() {
    return const ErrorCartState();
  }

  LoadingCartState loading() {
    return const LoadingCartState();
  }

  LoadedCartState loaded(List<OrderEntity> cart) {
    return LoadedCartState(
      cart,
    );
  }
}

/// @nodoc
const $CartState = _$CartStateTearOff();

/// @nodoc
mixin _$CartState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() error,
    required TResult Function() loading,
    required TResult Function(List<OrderEntity> cart) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? error,
    TResult Function()? loading,
    TResult Function(List<OrderEntity> cart)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? error,
    TResult Function()? loading,
    TResult Function(List<OrderEntity> cart)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitCartState value) init,
    required TResult Function(ErrorCartState value) error,
    required TResult Function(LoadingCartState value) loading,
    required TResult Function(LoadedCartState value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitCartState value)? init,
    TResult Function(ErrorCartState value)? error,
    TResult Function(LoadingCartState value)? loading,
    TResult Function(LoadedCartState value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitCartState value)? init,
    TResult Function(ErrorCartState value)? error,
    TResult Function(LoadingCartState value)? loading,
    TResult Function(LoadedCartState value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartStateCopyWith<$Res> {
  factory $CartStateCopyWith(CartState value, $Res Function(CartState) then) =
      _$CartStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$CartStateCopyWithImpl<$Res> implements $CartStateCopyWith<$Res> {
  _$CartStateCopyWithImpl(this._value, this._then);

  final CartState _value;
  // ignore: unused_field
  final $Res Function(CartState) _then;
}

/// @nodoc
abstract class $InitCartStateCopyWith<$Res> {
  factory $InitCartStateCopyWith(
          InitCartState value, $Res Function(InitCartState) then) =
      _$InitCartStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitCartStateCopyWithImpl<$Res> extends _$CartStateCopyWithImpl<$Res>
    implements $InitCartStateCopyWith<$Res> {
  _$InitCartStateCopyWithImpl(
      InitCartState _value, $Res Function(InitCartState) _then)
      : super(_value, (v) => _then(v as InitCartState));

  @override
  InitCartState get _value => super._value as InitCartState;
}

/// @nodoc

class _$InitCartState implements InitCartState {
  const _$InitCartState();

  @override
  String toString() {
    return 'CartState.init()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is InitCartState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() error,
    required TResult Function() loading,
    required TResult Function(List<OrderEntity> cart) loaded,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? error,
    TResult Function()? loading,
    TResult Function(List<OrderEntity> cart)? loaded,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? error,
    TResult Function()? loading,
    TResult Function(List<OrderEntity> cart)? loaded,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitCartState value) init,
    required TResult Function(ErrorCartState value) error,
    required TResult Function(LoadingCartState value) loading,
    required TResult Function(LoadedCartState value) loaded,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitCartState value)? init,
    TResult Function(ErrorCartState value)? error,
    TResult Function(LoadingCartState value)? loading,
    TResult Function(LoadedCartState value)? loaded,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitCartState value)? init,
    TResult Function(ErrorCartState value)? error,
    TResult Function(LoadingCartState value)? loading,
    TResult Function(LoadedCartState value)? loaded,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class InitCartState implements CartState {
  const factory InitCartState() = _$InitCartState;
}

/// @nodoc
abstract class $ErrorCartStateCopyWith<$Res> {
  factory $ErrorCartStateCopyWith(
          ErrorCartState value, $Res Function(ErrorCartState) then) =
      _$ErrorCartStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ErrorCartStateCopyWithImpl<$Res> extends _$CartStateCopyWithImpl<$Res>
    implements $ErrorCartStateCopyWith<$Res> {
  _$ErrorCartStateCopyWithImpl(
      ErrorCartState _value, $Res Function(ErrorCartState) _then)
      : super(_value, (v) => _then(v as ErrorCartState));

  @override
  ErrorCartState get _value => super._value as ErrorCartState;
}

/// @nodoc

class _$ErrorCartState implements ErrorCartState {
  const _$ErrorCartState();

  @override
  String toString() {
    return 'CartState.error()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is ErrorCartState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() error,
    required TResult Function() loading,
    required TResult Function(List<OrderEntity> cart) loaded,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? error,
    TResult Function()? loading,
    TResult Function(List<OrderEntity> cart)? loaded,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? error,
    TResult Function()? loading,
    TResult Function(List<OrderEntity> cart)? loaded,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitCartState value) init,
    required TResult Function(ErrorCartState value) error,
    required TResult Function(LoadingCartState value) loading,
    required TResult Function(LoadedCartState value) loaded,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitCartState value)? init,
    TResult Function(ErrorCartState value)? error,
    TResult Function(LoadingCartState value)? loading,
    TResult Function(LoadedCartState value)? loaded,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitCartState value)? init,
    TResult Function(ErrorCartState value)? error,
    TResult Function(LoadingCartState value)? loading,
    TResult Function(LoadedCartState value)? loaded,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ErrorCartState implements CartState {
  const factory ErrorCartState() = _$ErrorCartState;
}

/// @nodoc
abstract class $LoadingCartStateCopyWith<$Res> {
  factory $LoadingCartStateCopyWith(
          LoadingCartState value, $Res Function(LoadingCartState) then) =
      _$LoadingCartStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadingCartStateCopyWithImpl<$Res> extends _$CartStateCopyWithImpl<$Res>
    implements $LoadingCartStateCopyWith<$Res> {
  _$LoadingCartStateCopyWithImpl(
      LoadingCartState _value, $Res Function(LoadingCartState) _then)
      : super(_value, (v) => _then(v as LoadingCartState));

  @override
  LoadingCartState get _value => super._value as LoadingCartState;
}

/// @nodoc

class _$LoadingCartState implements LoadingCartState {
  const _$LoadingCartState();

  @override
  String toString() {
    return 'CartState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is LoadingCartState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() error,
    required TResult Function() loading,
    required TResult Function(List<OrderEntity> cart) loaded,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? error,
    TResult Function()? loading,
    TResult Function(List<OrderEntity> cart)? loaded,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? error,
    TResult Function()? loading,
    TResult Function(List<OrderEntity> cart)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitCartState value) init,
    required TResult Function(ErrorCartState value) error,
    required TResult Function(LoadingCartState value) loading,
    required TResult Function(LoadedCartState value) loaded,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitCartState value)? init,
    TResult Function(ErrorCartState value)? error,
    TResult Function(LoadingCartState value)? loading,
    TResult Function(LoadedCartState value)? loaded,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitCartState value)? init,
    TResult Function(ErrorCartState value)? error,
    TResult Function(LoadingCartState value)? loading,
    TResult Function(LoadedCartState value)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LoadingCartState implements CartState {
  const factory LoadingCartState() = _$LoadingCartState;
}

/// @nodoc
abstract class $LoadedCartStateCopyWith<$Res> {
  factory $LoadedCartStateCopyWith(
          LoadedCartState value, $Res Function(LoadedCartState) then) =
      _$LoadedCartStateCopyWithImpl<$Res>;
  $Res call({List<OrderEntity> cart});
}

/// @nodoc
class _$LoadedCartStateCopyWithImpl<$Res> extends _$CartStateCopyWithImpl<$Res>
    implements $LoadedCartStateCopyWith<$Res> {
  _$LoadedCartStateCopyWithImpl(
      LoadedCartState _value, $Res Function(LoadedCartState) _then)
      : super(_value, (v) => _then(v as LoadedCartState));

  @override
  LoadedCartState get _value => super._value as LoadedCartState;

  @override
  $Res call({
    Object? cart = freezed,
  }) {
    return _then(LoadedCartState(
      cart == freezed
          ? _value.cart
          : cart // ignore: cast_nullable_to_non_nullable
              as List<OrderEntity>,
    ));
  }
}

/// @nodoc

class _$LoadedCartState implements LoadedCartState {
  const _$LoadedCartState(this.cart);

  @override
  final List<OrderEntity> cart;

  @override
  String toString() {
    return 'CartState.loaded(cart: $cart)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LoadedCartState &&
            const DeepCollectionEquality().equals(other.cart, cart));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(cart));

  @JsonKey(ignore: true)
  @override
  $LoadedCartStateCopyWith<LoadedCartState> get copyWith =>
      _$LoadedCartStateCopyWithImpl<LoadedCartState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() error,
    required TResult Function() loading,
    required TResult Function(List<OrderEntity> cart) loaded,
  }) {
    return loaded(cart);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? error,
    TResult Function()? loading,
    TResult Function(List<OrderEntity> cart)? loaded,
  }) {
    return loaded?.call(cart);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? error,
    TResult Function()? loading,
    TResult Function(List<OrderEntity> cart)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(cart);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitCartState value) init,
    required TResult Function(ErrorCartState value) error,
    required TResult Function(LoadingCartState value) loading,
    required TResult Function(LoadedCartState value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitCartState value)? init,
    TResult Function(ErrorCartState value)? error,
    TResult Function(LoadingCartState value)? loading,
    TResult Function(LoadedCartState value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitCartState value)? init,
    TResult Function(ErrorCartState value)? error,
    TResult Function(LoadingCartState value)? loading,
    TResult Function(LoadedCartState value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class LoadedCartState implements CartState {
  const factory LoadedCartState(List<OrderEntity> cart) = _$LoadedCartState;

  List<OrderEntity> get cart;
  @JsonKey(ignore: true)
  $LoadedCartStateCopyWith<LoadedCartState> get copyWith =>
      throw _privateConstructorUsedError;
}
