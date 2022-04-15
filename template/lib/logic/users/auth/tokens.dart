import 'package:template/data/connectors/yafunctions/config.dart';
import 'package:template/data/connectors/yafunctions/impl.dart';
import 'package:template/data/connectors/yafunctions/models/token.dart';
import 'package:template/data/storage/secure_storage/impl.dart';

class TokenTools {
  AppSecureStorage appSecureStorage = AppSecureStorage();

  Future<bool> checkExpiredTime(String expireTimeKey) async {
    String? expireTime = await appSecureStorage.read(expireTimeKey);
    if (expireTime != null) {
      DateTime tokenExpireTime = DateTime.parse(expireTime);

      if (tokenExpireTime.isBefore(DateTime.now())) {
        return true;
      }
    }
    return false;
  }

  Future<Token> updateToken(Function func) async {
    return await func();
  }
}

class YaFunctionsTokenTools extends TokenTools {
  YaFunctionsTokenTools() : super();

  String key = 'yaFuncToken';
  String expireTime = 'yaFuncExpireTime';
  YaFunctions yaFunction = YaFunctions(
    getTokenFunctionId,
    tokenParameters,
  );

  Token getToken() async {
    String? token = await super.appSecureStorage.read(key);

    if (token != null) {
      String? time = await appSecureStorage.read(expireTime);
      bool flag = await super.checkExpiredTime(time ?? '2040-01-01 00:00:00');
      if (flag) {
        Token? tokenObject = await yaFunction.getToken();
      }
    }
  }
}
