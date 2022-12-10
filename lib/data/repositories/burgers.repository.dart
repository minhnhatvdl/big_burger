import 'package:big_burger/data/apis/clients/burgers.client.dart';
import 'package:big_burger/data/apis/transformers/burgers.transformer.dart';
import 'package:big_burger/data/repositories/repository_reponse.dart';
import 'package:big_burger/domain/entities/burger/burger.entity.dart';
import 'package:big_burger/domain/repositories/iburgers.repository.dart';

class BurgersRepository extends IBurgersRepository {
  BurgersRepository({required this.burgersClient});
  final BurgersClient burgersClient;

  @override
  Future<RepositoryResponse<SimpleStatus, List<BurgerEntity>>> getBurgers() async {
    final response = await burgersClient.getBurgers();
    if (response.status == SimpleStatus.success) {
      final burgers = response.content ?? [];
      return RepositoryResponse<SimpleStatus, List<BurgerEntity>>(
        status: SimpleStatus.success,
        content: BurgersTransformer.burgersFromDto(burgers),
      );
    }
    return const RepositoryResponse<SimpleStatus, List<BurgerEntity>>(status: SimpleStatus.error);
  }
}
