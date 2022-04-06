import 'package:http/http.dart' as http;

class HttpAdaper {
  Future<http.Response> get(
    Uri uri,
  ) async {
    return await http.get(
      uri,
    );
  }

  Future<http.Response> post(
    Uri uri,
    Map<String, String>? headers,
    Object? body,
  ) async {
    return await http.post(
      uri,
      headers: headers,
      body: body,
    );
  }

  Uri buildUrl(String domain, String uri, Map<String, dynamic>? params) {
    return Uri.https(domain, uri, params);
  }
}
