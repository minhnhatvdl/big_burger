import 'package:big_burger/data/apis/clients/burgers.client.dart';
import 'package:big_burger/data/apis/clients/http.client.dart';
import 'package:big_burger/data/repositories/burgers.repository.dart';
import 'package:big_burger/domain/usecases/orders.usecase.dart';
import 'package:get_it/get_it.dart';

GetIt locator = GetIt.instance;

Future<void> setupLocator() async {
  // clients
  locator.registerLazySingleton(() => HttpClient());
  locator.registerLazySingleton(() => BurgersClient(httpClient: locator<HttpClient>()));

  // repositories
  locator.registerLazySingleton(() => BurgersRepository(burgersClient: locator<BurgersClient>()));

  // usecases
  locator.registerLazySingleton(() => OrdersUsecase(burgersRepository: locator<BurgersRepository>()));
}
