import 'package:big_burger/data/apis/dtos/burger/burger.dto.dart';
import 'package:big_burger/domain/entities/burger/burger.entity.dart';

class BurgersTransformer {
  static List<BurgerEntity> burgersFromDto(List<DtoBurger> burgers) => burgers
      .map((burger) => BurgerEntity(
            ref: burger.ref,
            title: burger.title,
            price: burger.price,
            description: burger.description ?? '',
            thumbnail: burger.thumbnail ?? '',
          ))
      .toList();
}
