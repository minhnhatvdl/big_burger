// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'burger.entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BurgerEntity _$$_BurgerEntityFromJson(Map<String, dynamic> json) =>
    _$_BurgerEntity(
      ref: json['ref'] as String,
      title: json['title'] as String,
      price: json['price'] as int,
      description: json['description'] as String,
      thumbnail: json['thumbnail'] as String,
    );

Map<String, dynamic> _$$_BurgerEntityToJson(_$_BurgerEntity instance) =>
    <String, dynamic>{
      'ref': instance.ref,
      'title': instance.title,
      'price': instance.price,
      'description': instance.description,
      'thumbnail': instance.thumbnail,
    };
