import 'dart:convert';
import 'package:big_burger/core/app_api.dart';
import 'package:big_burger/data/apis/dtos/burger/burger.dto.dart';
import 'package:big_burger/data/repositories/repository_reponse.dart';
import 'package:http/http.dart';
import 'http.client.dart';

class BurgersClient {
  const BurgersClient({required this.httpClient});
  final HttpClient httpClient;

  Future<RepositoryResponse<SimpleStatus, List<DtoBurger>>> getBurgers() async {
    try {
      final Uri url = Uri.parse(AppApi.bigBurgers);
      final Response result = await httpClient.get(url);
      if (result.statusCode == 200) {
        final List<DtoBurger> burgers = (jsonDecode(result.body) as List<dynamic>).map((dynamic e) => DtoBurger.fromJson(e as Map<String, dynamic>)).toList();
        return RepositoryResponse<SimpleStatus, List<DtoBurger>>(
          status: SimpleStatus.success,
          content: burgers,
        );
      }
      return const RepositoryResponse<SimpleStatus, List<DtoBurger>>(
        status: SimpleStatus.error,
      );
    } catch (_) {
      return const RepositoryResponse<SimpleStatus, List<DtoBurger>>(
        status: SimpleStatus.error,
      );
    }
  }
}
