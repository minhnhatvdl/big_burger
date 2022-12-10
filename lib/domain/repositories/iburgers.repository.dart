import 'package:big_burger/data/repositories/repository_reponse.dart';
import 'package:big_burger/domain/entities/burger/burger.entity.dart';

abstract class IBurgersRepository {
  Future<RepositoryResponse<SimpleStatus, List<BurgerEntity>>> getBurgers();
}
