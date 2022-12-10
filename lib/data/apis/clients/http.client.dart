import 'package:http/http.dart';

class HttpClient {
  final client = Client();

  Future<Response> get(Uri url) => client.get(url).timeout(const Duration(seconds: 5));
}
