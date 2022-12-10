// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'burger.dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DtoBurger _$DtoBurgerFromJson(Map<String, dynamic> json) {
  return _DtoBurger.fromJson(json);
}

/// @nodoc
mixin _$DtoBurger {
  String get ref => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  int get price => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get thumbnail => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DtoBurgerCopyWith<DtoBurger> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DtoBurgerCopyWith<$Res> {
  factory $DtoBurgerCopyWith(DtoBurger value, $Res Function(DtoBurger) then) =
      _$DtoBurgerCopyWithImpl<$Res>;
  $Res call(
      {String ref,
      String title,
      int price,
      String? description,
      String? thumbnail});
}

/// @nodoc
class _$DtoBurgerCopyWithImpl<$Res> implements $DtoBurgerCopyWith<$Res> {
  _$DtoBurgerCopyWithImpl(this._value, this._then);

  final DtoBurger _value;
  // ignore: unused_field
  final $Res Function(DtoBurger) _then;

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
              as String?,
      thumbnail: thumbnail == freezed
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_DtoBurgerCopyWith<$Res> implements $DtoBurgerCopyWith<$Res> {
  factory _$$_DtoBurgerCopyWith(
          _$_DtoBurger value, $Res Function(_$_DtoBurger) then) =
      __$$_DtoBurgerCopyWithImpl<$Res>;
  @override
  $Res call(
      {String ref,
      String title,
      int price,
      String? description,
      String? thumbnail});
}

/// @nodoc
class __$$_DtoBurgerCopyWithImpl<$Res> extends _$DtoBurgerCopyWithImpl<$Res>
    implements _$$_DtoBurgerCopyWith<$Res> {
  __$$_DtoBurgerCopyWithImpl(
      _$_DtoBurger _value, $Res Function(_$_DtoBurger) _then)
      : super(_value, (v) => _then(v as _$_DtoBurger));

  @override
  _$_DtoBurger get _value => super._value as _$_DtoBurger;

  @override
  $Res call({
    Object? ref = freezed,
    Object? title = freezed,
    Object? price = freezed,
    Object? description = freezed,
    Object? thumbnail = freezed,
  }) {
    return _then(_$_DtoBurger(
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
              as String?,
      thumbnail: thumbnail == freezed
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.none, explicitToJson: true)
class _$_DtoBurger implements _DtoBurger {
  const _$_DtoBurger(
      {required this.ref,
      required this.title,
      required this.price,
      this.description,
      this.thumbnail});

  factory _$_DtoBurger.fromJson(Map<String, dynamic> json) =>
      _$$_DtoBurgerFromJson(json);

  @override
  final String ref;
  @override
  final String title;
  @override
  final int price;
  @override
  final String? description;
  @override
  final String? thumbnail;

  @override
  String toString() {
    return 'DtoBurger(ref: $ref, title: $title, price: $price, description: $description, thumbnail: $thumbnail)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DtoBurger &&
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
  _$$_DtoBurgerCopyWith<_$_DtoBurger> get copyWith =>
      __$$_DtoBurgerCopyWithImpl<_$_DtoBurger>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DtoBurgerToJson(
      this,
    );
  }
}

abstract class _DtoBurger implements DtoBurger {
  const factory _DtoBurger(
      {required final String ref,
      required final String title,
      required final int price,
      final String? description,
      final String? thumbnail}) = _$_DtoBurger;

  factory _DtoBurger.fromJson(Map<String, dynamic> json) =
      _$_DtoBurger.fromJson;

  @override
  String get ref;
  @override
  String get title;
  @override
  int get price;
  @override
  String? get description;
  @override
  String? get thumbnail;
  @override
  @JsonKey(ignore: true)
  _$$_DtoBurgerCopyWith<_$_DtoBurger> get copyWith =>
      throw _privateConstructorUsedError;
}
