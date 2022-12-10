import 'dart:convert';
import 'package:big_burger/core/app_api.dart';
import 'package:big_burger/data/apis/clients/burgers.client.dart';
import 'package:big_burger/data/apis/clients/http.client.dart';
import 'package:big_burger/data/apis/dtos/burger/burger.dto.dart';
import 'package:big_burger/data/repositories/repository_reponse.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'burgers_sample.dart';
import 'mock_api_test.mocks.dart';

// Create new instances of this class in each test.
@GenerateNiceMocks([MockSpec<HttpClient>()])
void main() {
  group('getBurgers', () {
    test('returns a list of burgers if the http call completes successfully', () async {
      final httpClient = MockHttpClient();
      final burgersClient = BurgersClient(httpClient: httpClient);
      final Uri url = Uri.parse(AppApi.bigBurgers);
      when(httpClient.get(url)).thenAnswer(
        (_) async => Response(jsonEncode(burgersSample), 200),
      );
      expect(await burgersClient.getBurgers(), isA<RepositoryResponse<SimpleStatus, List<DtoBurger>>>());
    });
  });
}
