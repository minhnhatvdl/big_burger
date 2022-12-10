// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'burger.dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DtoBurger _$$_DtoBurgerFromJson(Map<String, dynamic> json) => _$_DtoBurger(
      ref: json['ref'] as String,
      title: json['title'] as String,
      price: json['price'] as int,
      description: json['description'] as String?,
      thumbnail: json['thumbnail'] as String?,
    );

Map<String, dynamic> _$$_DtoBurgerToJson(_$_DtoBurger instance) =>
    <String, dynamic>{
      'ref': instance.ref,
      'title': instance.title,
      'price': instance.price,
      'description': instance.description,
      'thumbnail': instance.thumbnail,
    };
