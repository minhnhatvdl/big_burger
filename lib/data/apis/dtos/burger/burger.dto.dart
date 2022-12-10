import 'package:freezed_annotation/freezed_annotation.dart';
part 'burger.dto.freezed.dart';
part 'burger.dto.g.dart';

@freezed
class DtoBurger with _$DtoBurger {
  @JsonSerializable(fieldRename: FieldRename.none, explicitToJson: true)
  const factory DtoBurger({
    required String ref,
    required String title,
    required int price,
    String? description,
    String? thumbnail,
  }) = _DtoBurger;

  factory DtoBurger.fromJson(Map<String, dynamic> json) => _$DtoBurgerFromJson(json);
}
