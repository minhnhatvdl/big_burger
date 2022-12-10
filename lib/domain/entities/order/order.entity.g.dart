// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order.entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_OrderEntity _$$_OrderEntityFromJson(Map<String, dynamic> json) =>
    _$_OrderEntity(
      quantity: json['quantity'] as int,
      burger: BurgerEntity.fromJson(json['burger'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_OrderEntityToJson(_$_OrderEntity instance) =>
    <String, dynamic>{
      'quantity': instance.quantity,
      'burger': instance.burger.toJson(),
    };
