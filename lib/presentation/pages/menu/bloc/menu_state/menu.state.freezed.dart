// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'menu.state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$MenuStateTearOff {
  const _$MenuStateTearOff();

  InitMenuState init() {
    return const InitMenuState();
  }

  ErrorMenuState error() {
    return const ErrorMenuState();
  }

  LoadingMenuState loading() {
    return const LoadingMenuState();
  }

  LoadedMenuState loaded(List<OrderEntity> menu) {
    return LoadedMenuState(
      menu,
    );
  }
}

/// @nodoc
const $MenuState = _$MenuStateTearOff();

/// @nodoc
mixin _$MenuState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() error,
    required TResult Function() loading,
    required TResult Function(List<OrderEntity> menu) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? error,
    TResult Function()? loading,
    TResult Function(List<OrderEntity> menu)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? error,
    TResult Function()? loading,
    TResult Function(List<OrderEntity> menu)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitMenuState value) init,
    required TResult Function(ErrorMenuState value) error,
    required TResult Function(LoadingMenuState value) loading,
    required TResult Function(LoadedMenuState value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitMenuState value)? init,
    TResult Function(ErrorMenuState value)? error,
    TResult Function(LoadingMenuState value)? loading,
    TResult Function(LoadedMenuState value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitMenuState value)? init,
    TResult Function(ErrorMenuState value)? error,
    TResult Function(LoadingMenuState value)? loading,
    TResult Function(LoadedMenuState value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MenuStateCopyWith<$Res> {
  factory $MenuStateCopyWith(MenuState value, $Res Function(MenuState) then) =
      _$MenuStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$MenuStateCopyWithImpl<$Res> implements $MenuStateCopyWith<$Res> {
  _$MenuStateCopyWithImpl(this._value, this._then);

  final MenuState _value;
  // ignore: unused_field
  final $Res Function(MenuState) _then;
}

/// @nodoc
abstract class $InitMenuStateCopyWith<$Res> {
  factory $InitMenuStateCopyWith(
          InitMenuState value, $Res Function(InitMenuState) then) =
      _$InitMenuStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitMenuStateCopyWithImpl<$Res> extends _$MenuStateCopyWithImpl<$Res>
    implements $InitMenuStateCopyWith<$Res> {
  _$InitMenuStateCopyWithImpl(
      InitMenuState _value, $Res Function(InitMenuState) _then)
      : super(_value, (v) => _then(v as InitMenuState));

  @override
  InitMenuState get _value => super._value as InitMenuState;
}

/// @nodoc

class _$InitMenuState implements InitMenuState {
  const _$InitMenuState();

  @override
  String toString() {
    return 'MenuState.init()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is InitMenuState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() error,
    required TResult Function() loading,
    required TResult Function(List<OrderEntity> menu) loaded,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? error,
    TResult Function()? loading,
    TResult Function(List<OrderEntity> menu)? loaded,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? error,
    TResult Function()? loading,
    TResult Function(List<OrderEntity> menu)? loaded,
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
    required TResult Function(InitMenuState value) init,
    required TResult Function(ErrorMenuState value) error,
    required TResult Function(LoadingMenuState value) loading,
    required TResult Function(LoadedMenuState value) loaded,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitMenuState value)? init,
    TResult Function(ErrorMenuState value)? error,
    TResult Function(LoadingMenuState value)? loading,
    TResult Function(LoadedMenuState value)? loaded,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitMenuState value)? init,
    TResult Function(ErrorMenuState value)? error,
    TResult Function(LoadingMenuState value)? loading,
    TResult Function(LoadedMenuState value)? loaded,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class InitMenuState implements MenuState {
  const factory InitMenuState() = _$InitMenuState;
}

/// @nodoc
abstract class $ErrorMenuStateCopyWith<$Res> {
  factory $ErrorMenuStateCopyWith(
          ErrorMenuState value, $Res Function(ErrorMenuState) then) =
      _$ErrorMenuStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ErrorMenuStateCopyWithImpl<$Res> extends _$MenuStateCopyWithImpl<$Res>
    implements $ErrorMenuStateCopyWith<$Res> {
  _$ErrorMenuStateCopyWithImpl(
      ErrorMenuState _value, $Res Function(ErrorMenuState) _then)
      : super(_value, (v) => _then(v as ErrorMenuState));

  @override
  ErrorMenuState get _value => super._value as ErrorMenuState;
}

/// @nodoc

class _$ErrorMenuState implements ErrorMenuState {
  const _$ErrorMenuState();

  @override
  String toString() {
    return 'MenuState.error()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is ErrorMenuState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() error,
    required TResult Function() loading,
    required TResult Function(List<OrderEntity> menu) loaded,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? error,
    TResult Function()? loading,
    TResult Function(List<OrderEntity> menu)? loaded,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? error,
    TResult Function()? loading,
    TResult Function(List<OrderEntity> menu)? loaded,
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
    required TResult Function(InitMenuState value) init,
    required TResult Function(ErrorMenuState value) error,
    required TResult Function(LoadingMenuState value) loading,
    required TResult Function(LoadedMenuState value) loaded,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitMenuState value)? init,
    TResult Function(ErrorMenuState value)? error,
    TResult Function(LoadingMenuState value)? loading,
    TResult Function(LoadedMenuState value)? loaded,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitMenuState value)? init,
    TResult Function(ErrorMenuState value)? error,
    TResult Function(LoadingMenuState value)? loading,
    TResult Function(LoadedMenuState value)? loaded,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ErrorMenuState implements MenuState {
  const factory ErrorMenuState() = _$ErrorMenuState;
}

/// @nodoc
abstract class $LoadingMenuStateCopyWith<$Res> {
  factory $LoadingMenuStateCopyWith(
          LoadingMenuState value, $Res Function(LoadingMenuState) then) =
      _$LoadingMenuStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadingMenuStateCopyWithImpl<$Res> extends _$MenuStateCopyWithImpl<$Res>
    implements $LoadingMenuStateCopyWith<$Res> {
  _$LoadingMenuStateCopyWithImpl(
      LoadingMenuState _value, $Res Function(LoadingMenuState) _then)
      : super(_value, (v) => _then(v as LoadingMenuState));

  @override
  LoadingMenuState get _value => super._value as LoadingMenuState;
}

/// @nodoc

class _$LoadingMenuState implements LoadingMenuState {
  const _$LoadingMenuState();

  @override
  String toString() {
    return 'MenuState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is LoadingMenuState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() error,
    required TResult Function() loading,
    required TResult Function(List<OrderEntity> menu) loaded,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? error,
    TResult Function()? loading,
    TResult Function(List<OrderEntity> menu)? loaded,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? error,
    TResult Function()? loading,
    TResult Function(List<OrderEntity> menu)? loaded,
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
    required TResult Function(InitMenuState value) init,
    required TResult Function(ErrorMenuState value) error,
    required TResult Function(LoadingMenuState value) loading,
    required TResult Function(LoadedMenuState value) loaded,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitMenuState value)? init,
    TResult Function(ErrorMenuState value)? error,
    TResult Function(LoadingMenuState value)? loading,
    TResult Function(LoadedMenuState value)? loaded,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitMenuState value)? init,
    TResult Function(ErrorMenuState value)? error,
    TResult Function(LoadingMenuState value)? loading,
    TResult Function(LoadedMenuState value)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LoadingMenuState implements MenuState {
  const factory LoadingMenuState() = _$LoadingMenuState;
}

/// @nodoc
abstract class $LoadedMenuStateCopyWith<$Res> {
  factory $LoadedMenuStateCopyWith(
          LoadedMenuState value, $Res Function(LoadedMenuState) then) =
      _$LoadedMenuStateCopyWithImpl<$Res>;
  $Res call({List<OrderEntity> menu});
}

/// @nodoc
class _$LoadedMenuStateCopyWithImpl<$Res> extends _$MenuStateCopyWithImpl<$Res>
    implements $LoadedMenuStateCopyWith<$Res> {
  _$LoadedMenuStateCopyWithImpl(
      LoadedMenuState _value, $Res Function(LoadedMenuState) _then)
      : super(_value, (v) => _then(v as LoadedMenuState));

  @override
  LoadedMenuState get _value => super._value as LoadedMenuState;

  @override
  $Res call({
    Object? menu = freezed,
  }) {
    return _then(LoadedMenuState(
      menu == freezed
          ? _value.menu
          : menu // ignore: cast_nullable_to_non_nullable
              as List<OrderEntity>,
    ));
  }
}

/// @nodoc

class _$LoadedMenuState implements LoadedMenuState {
  const _$LoadedMenuState(this.menu);

  @override
  final List<OrderEntity> menu;

  @override
  String toString() {
    return 'MenuState.loaded(menu: $menu)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LoadedMenuState &&
            const DeepCollectionEquality().equals(other.menu, menu));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(menu));

  @JsonKey(ignore: true)
  @override
  $LoadedMenuStateCopyWith<LoadedMenuState> get copyWith =>
      _$LoadedMenuStateCopyWithImpl<LoadedMenuState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() error,
    required TResult Function() loading,
    required TResult Function(List<OrderEntity> menu) loaded,
  }) {
    return loaded(menu);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? error,
    TResult Function()? loading,
    TResult Function(List<OrderEntity> menu)? loaded,
  }) {
    return loaded?.call(menu);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? error,
    TResult Function()? loading,
    TResult Function(List<OrderEntity> menu)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(menu);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitMenuState value) init,
    required TResult Function(ErrorMenuState value) error,
    required TResult Function(LoadingMenuState value) loading,
    required TResult Function(LoadedMenuState value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitMenuState value)? init,
    TResult Function(ErrorMenuState value)? error,
    TResult Function(LoadingMenuState value)? loading,
    TResult Function(LoadedMenuState value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitMenuState value)? init,
    TResult Function(ErrorMenuState value)? error,
    TResult Function(LoadingMenuState value)? loading,
    TResult Function(LoadedMenuState value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class LoadedMenuState implements MenuState {
  const factory LoadedMenuState(List<OrderEntity> menu) = _$LoadedMenuState;

  List<OrderEntity> get menu;
  @JsonKey(ignore: true)
  $LoadedMenuStateCopyWith<LoadedMenuState> get copyWith =>
      throw _privateConstructorUsedError;
}
