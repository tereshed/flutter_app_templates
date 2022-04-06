import 'package:template/data/connectors/yafunctions/adapter.dart';

class YaFunctions extends YaFunctionsAdapter {
  YaFunctions(
    String functionId,
    Map<String, dynamic> getParameters,
  ) : super(
          functionId: functionId,
          getParameters: getParameters,
        );
}
