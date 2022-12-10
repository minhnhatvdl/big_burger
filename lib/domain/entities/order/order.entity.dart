import 'package:big_burger/domain/entities/burger/burger.entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'order.entity.freezed.dart';
part 'order.entity.g.dart';

@freezed
class OrderEntity with _$OrderEntity {
  @JsonSerializable(fieldRename: FieldRename.none, explicitToJson: true)
  const factory OrderEntity({
    required int quantity,
    required BurgerEntity burger,
  }) = _OrderEntity;

  factory OrderEntity.fromJson(Map<String, dynamic> json) => _$OrderEntityFromJson(json);
}
