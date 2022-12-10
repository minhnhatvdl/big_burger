// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'order.entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OrderEntity _$OrderEntityFromJson(Map<String, dynamic> json) {
  return _OrderEntity.fromJson(json);
}

/// @nodoc
class _$OrderEntityTearOff {
  const _$OrderEntityTearOff();

  _OrderEntity call({required int quantity, required BurgerEntity burger}) {
    return _OrderEntity(
      quantity: quantity,
      burger: burger,
    );
  }

  OrderEntity fromJson(Map<String, Object?> json) {
    return OrderEntity.fromJson(json);
  }
}

/// @nodoc
const $OrderEntity = _$OrderEntityTearOff();

/// @nodoc
mixin _$OrderEntity {
  int get quantity => throw _privateConstructorUsedError;
  BurgerEntity get burger => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrderEntityCopyWith<OrderEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderEntityCopyWith<$Res> {
  factory $OrderEntityCopyWith(
          OrderEntity value, $Res Function(OrderEntity) then) =
      _$OrderEntityCopyWithImpl<$Res>;
  $Res call({int quantity, BurgerEntity burger});

  $BurgerEntityCopyWith<$Res> get burger;
}

/// @nodoc
class _$OrderEntityCopyWithImpl<$Res> implements $OrderEntityCopyWith<$Res> {
  _$OrderEntityCopyWithImpl(this._value, this._then);

  final OrderEntity _value;
  // ignore: unused_field
  final $Res Function(OrderEntity) _then;

  @override
  $Res call({
    Object? quantity = freezed,
    Object? burger = freezed,
  }) {
    return _then(_value.copyWith(
      quantity: quantity == freezed
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      burger: burger == freezed
          ? _value.burger
          : burger // ignore: cast_nullable_to_non_nullable
              as BurgerEntity,
    ));
  }

  @override
  $BurgerEntityCopyWith<$Res> get burger {
    return $BurgerEntityCopyWith<$Res>(_value.burger, (value) {
      return _then(_value.copyWith(burger: value));
    });
  }
}

/// @nodoc
abstract class _$OrderEntityCopyWith<$Res>
    implements $OrderEntityCopyWith<$Res> {
  factory _$OrderEntityCopyWith(
          _OrderEntity value, $Res Function(_OrderEntity) then) =
      __$OrderEntityCopyWithImpl<$Res>;
  @override
  $Res call({int quantity, BurgerEntity burger});

  @override
  $BurgerEntityCopyWith<$Res> get burger;
}

/// @nodoc
class __$OrderEntityCopyWithImpl<$Res> extends _$OrderEntityCopyWithImpl<$Res>
    implements _$OrderEntityCopyWith<$Res> {
  __$OrderEntityCopyWithImpl(
      _OrderEntity _value, $Res Function(_OrderEntity) _then)
      : super(_value, (v) => _then(v as _OrderEntity));

  @override
  _OrderEntity get _value => super._value as _OrderEntity;

  @override
  $Res call({
    Object? quantity = freezed,
    Object? burger = freezed,
  }) {
    return _then(_OrderEntity(
      quantity: quantity == freezed
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      burger: burger == freezed
          ? _value.burger
          : burger // ignore: cast_nullable_to_non_nullable
              as BurgerEntity,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.none, explicitToJson: true)
class _$_OrderEntity implements _OrderEntity {
  const _$_OrderEntity({required this.quantity, required this.burger});

  factory _$_OrderEntity.fromJson(Map<String, dynamic> json) =>
      _$$_OrderEntityFromJson(json);

  @override
  final int quantity;
  @override
  final BurgerEntity burger;

  @override
  String toString() {
    return 'OrderEntity(quantity: $quantity, burger: $burger)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _OrderEntity &&
            const DeepCollectionEquality().equals(other.quantity, quantity) &&
            const DeepCollectionEquality().equals(other.burger, burger));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(quantity),
      const DeepCollectionEquality().hash(burger));

  @JsonKey(ignore: true)
  @override
  _$OrderEntityCopyWith<_OrderEntity> get copyWith =>
      __$OrderEntityCopyWithImpl<_OrderEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OrderEntityToJson(this);
  }
}

abstract class _OrderEntity implements OrderEntity {
  const factory _OrderEntity(
      {required int quantity, required BurgerEntity burger}) = _$_OrderEntity;

  factory _OrderEntity.fromJson(Map<String, dynamic> json) =
      _$_OrderEntity.fromJson;

  @override
  int get quantity;
  @override
  BurgerEntity get burger;
  @override
  @JsonKey(ignore: true)
  _$OrderEntityCopyWith<_OrderEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
