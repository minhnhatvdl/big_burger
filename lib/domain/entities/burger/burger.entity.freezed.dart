// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'burger.entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BurgerEntity _$BurgerEntityFromJson(Map<String, dynamic> json) {
  return _BurgerEntity.fromJson(json);
}

/// @nodoc
mixin _$BurgerEntity {
  String get ref => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  int get price => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get thumbnail => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BurgerEntityCopyWith<BurgerEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BurgerEntityCopyWith<$Res> {
  factory $BurgerEntityCopyWith(
          BurgerEntity value, $Res Function(BurgerEntity) then) =
      _$BurgerEntityCopyWithImpl<$Res>;
  $Res call(
      {String ref,
      String title,
      int price,
      String description,
      String thumbnail});
}

/// @nodoc
class _$BurgerEntityCopyWithImpl<$Res> implements $BurgerEntityCopyWith<$Res> {
  _$BurgerEntityCopyWithImpl(this._value, this._then);

  final BurgerEntity _value;
  // ignore: unused_field
  final $Res Function(BurgerEntity) _then;

  @override
  $Res call({
    Object? ref = freezed,
    Object? title = freezed,
    Object? price = freezed,
    Object? description = freezed,
    Object? thumbnail = freezed,
  }) {
    return _then(_value.copyWith(
      ref: ref == freezed
          ? _value.ref
          : ref // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnail: thumbnail == freezed
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_BurgerEntityCopyWith<$Res>
    implements $BurgerEntityCopyWith<$Res> {
  factory _$$_BurgerEntityCopyWith(
          _$_BurgerEntity value, $Res Function(_$_BurgerEntity) then) =
      __$$_BurgerEntityCopyWithImpl<$Res>;
  @override
  $Res call(
      {String ref,
      String title,
      int price,
      String description,
      String thumbnail});
}

/// @nodoc
class __$$_BurgerEntityCopyWithImpl<$Res>
    extends _$BurgerEntityCopyWithImpl<$Res>
    implements _$$_BurgerEntityCopyWith<$Res> {
  __$$_BurgerEntityCopyWithImpl(
      _$_BurgerEntity _value, $Res Function(_$_BurgerEntity) _then)
      : super(_value, (v) => _then(v as _$_BurgerEntity));

  @override
  _$_BurgerEntity get _value => super._value as _$_BurgerEntity;

  @override
  $Res call({
    Object? ref = freezed,
    Object? title = freezed,
    Object? price = freezed,
    Object? description = freezed,
    Object? thumbnail = freezed,
  }) {
    return _then(_$_BurgerEntity(
      ref: ref == freezed
          ? _value.ref
          : ref // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnail: thumbnail == freezed
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.none, explicitToJson: true)
class _$_BurgerEntity implements _BurgerEntity {
  const _$_BurgerEntity(
      {required this.ref,
      required this.title,
      required this.price,
      required this.description,
      required this.thumbnail});

  factory _$_BurgerEntity.fromJson(Map<String, dynamic> json) =>
      _$$_BurgerEntityFromJson(json);

  @override
  final String ref;
  @override
  final String title;
  @override
  final int price;
  @override
  final String description;
  @override
  final String thumbnail;

  @override
  String toString() {
    return 'BurgerEntity(ref: $ref, title: $title, price: $price, description: $description, thumbnail: $thumbnail)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BurgerEntity &&
            const DeepCollectionEquality().equals(other.ref, ref) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.price, price) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.thumbnail, thumbnail));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(ref),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(price),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(thumbnail));

  @JsonKey(ignore: true)
  @override
  _$$_BurgerEntityCopyWith<_$_BurgerEntity> get copyWith =>
      __$$_BurgerEntityCopyWithImpl<_$_BurgerEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BurgerEntityToJson(
      this,
    );
  }
}

abstract class _BurgerEntity implements BurgerEntity {
  const factory _BurgerEntity(
      {required final String ref,
      required final String title,
      required final int price,
      required final String description,
      required final String thumbnail}) = _$_BurgerEntity;

  factory _BurgerEntity.fromJson(Map<String, dynamic> json) =
      _$_BurgerEntity.fromJson;

  @override
  String get ref;
  @override
  String get title;
  @override
  int get price;
  @override
  String get description;
  @override
  String get thumbnail;
  @override
  @JsonKey(ignore: true)
  _$$_BurgerEntityCopyWith<_$_BurgerEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
