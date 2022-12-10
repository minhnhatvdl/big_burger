import 'package:freezed_annotation/freezed_annotation.dart';
part 'burger.entity.freezed.dart';
part 'burger.entity.g.dart';

@freezed
class BurgerEntity with _$BurgerEntity {
  @JsonSerializable(fieldRename: FieldRename.none, explicitToJson: true)
  const factory BurgerEntity({
    required String ref,
    required String title,
    required int price,
    required String description,
    required String thumbnail,
  }) = _BurgerEntity;

  factory BurgerEntity.fromJson(Map<String, dynamic> json) => _$BurgerEntityFromJson(json);
}
