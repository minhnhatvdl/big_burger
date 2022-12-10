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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

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
abstract class _$$InitMenuStateCopyWith<$Res> {
  factory _$$InitMenuStateCopyWith(
          _$InitMenuState value, $Res Function(_$InitMenuState) then) =
      __$$InitMenuStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitMenuStateCopyWithImpl<$Res> extends _$MenuStateCopyWithImpl<$Res>
    implements _$$InitMenuStateCopyWith<$Res> {
  __$$InitMenuStateCopyWithImpl(
      _$InitMenuState _value, $Res Function(_$InitMenuState) _then)
      : super(_value, (v) => _then(v as _$InitMenuState));

  @override
  _$InitMenuState get _value => super._value as _$InitMenuState;
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
        (other.runtimeType == runtimeType && other is _$InitMenuState);
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
abstract class _$$ErrorMenuStateCopyWith<$Res> {
  factory _$$ErrorMenuStateCopyWith(
          _$ErrorMenuState value, $Res Function(_$ErrorMenuState) then) =
      __$$ErrorMenuStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ErrorMenuStateCopyWithImpl<$Res> extends _$MenuStateCopyWithImpl<$Res>
    implements _$$ErrorMenuStateCopyWith<$Res> {
  __$$ErrorMenuStateCopyWithImpl(
      _$ErrorMenuState _value, $Res Function(_$ErrorMenuState) _then)
      : super(_value, (v) => _then(v as _$ErrorMenuState));

  @override
  _$ErrorMenuState get _value => super._value as _$ErrorMenuState;
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
        (other.runtimeType == runtimeType && other is _$ErrorMenuState);
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
abstract class _$$LoadingMenuStateCopyWith<$Res> {
  factory _$$LoadingMenuStateCopyWith(
          _$LoadingMenuState value, $Res Function(_$LoadingMenuState) then) =
      __$$LoadingMenuStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingMenuStateCopyWithImpl<$Res>
    extends _$MenuStateCopyWithImpl<$Res>
    implements _$$LoadingMenuStateCopyWith<$Res> {
  __$$LoadingMenuStateCopyWithImpl(
      _$LoadingMenuState _value, $Res Function(_$LoadingMenuState) _then)
      : super(_value, (v) => _then(v as _$LoadingMenuState));

  @override
  _$LoadingMenuState get _value => super._value as _$LoadingMenuState;
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
        (other.runtimeType == runtimeType && other is _$LoadingMenuState);
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
abstract class _$$LoadedMenuStateCopyWith<$Res> {
  factory _$$LoadedMenuStateCopyWith(
          _$LoadedMenuState value, $Res Function(_$LoadedMenuState) then) =
      __$$LoadedMenuStateCopyWithImpl<$Res>;
  $Res call({List<OrderEntity> menu});
}

/// @nodoc
class __$$LoadedMenuStateCopyWithImpl<$Res>
    extends _$MenuStateCopyWithImpl<$Res>
    implements _$$LoadedMenuStateCopyWith<$Res> {
  __$$LoadedMenuStateCopyWithImpl(
      _$LoadedMenuState _value, $Res Function(_$LoadedMenuState) _then)
      : super(_value, (v) => _then(v as _$LoadedMenuState));

  @override
  _$LoadedMenuState get _value => super._value as _$LoadedMenuState;

  @override
  $Res call({
    Object? menu = freezed,
  }) {
    return _then(_$LoadedMenuState(
      menu == freezed
          ? _value._menu
          : menu // ignore: cast_nullable_to_non_nullable
              as List<OrderEntity>,
    ));
  }
}

/// @nodoc

class _$LoadedMenuState implements LoadedMenuState {
  const _$LoadedMenuState(final List<OrderEntity> menu) : _menu = menu;

  final List<OrderEntity> _menu;
  @override
  List<OrderEntity> get menu {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_menu);
  }

  @override
  String toString() {
    return 'MenuState.loaded(menu: $menu)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedMenuState &&
            const DeepCollectionEquality().equals(other._menu, _menu));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_menu));

  @JsonKey(ignore: true)
  @override
  _$$LoadedMenuStateCopyWith<_$LoadedMenuState> get copyWith =>
      __$$LoadedMenuStateCopyWithImpl<_$LoadedMenuState>(this, _$identity);

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
  const factory LoadedMenuState(final List<OrderEntity> menu) =
      _$LoadedMenuState;

  List<OrderEntity> get menu;
  @JsonKey(ignore: true)
  _$$LoadedMenuStateCopyWith<_$LoadedMenuState> get copyWith =>
      throw _privateConstructorUsedError;
}
