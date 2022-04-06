import 'package:template/data/connectors/yafunctions/config.dart';
import 'package:template/data/connectors/yafunctions/models/token.dart';
import 'package:template/data/rest_api/adapter.dart';
import 'dart:convert';

class YaFunctionsAdapter {
  String yaFuncDomain = 'functions.yandexcloud.net';

  final String functionId;

  final Map<String, dynamic> getParameters;

  final HttpAdaper httpAdapter = HttpAdaper();

  YaFunctionsAdapter({
    required this.functionId,
    required this.getParameters,
  });

  Future<Token?> getToken() async {
    var response = await httpAdapter.get(
      httpAdapter.buildUrl(
        yaFuncDomain,
        functionId,
        getParameters,
      ),
    );
    if (response.statusCode == 200) {
      return Token.fromJson(
        jsonDecode(response.body),
      );
    }
    return null;
  }
}
