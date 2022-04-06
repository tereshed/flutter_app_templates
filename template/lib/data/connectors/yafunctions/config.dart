import 'package:template/data/connectors/yafunctions/utils/service_account.dart';

String getTokenFunctionId = 'd4eu4njj7ug5qf3p3uku';

YaServiceAccount yaServiceAccount = YaServiceAccount(
  serviceAccountId: 'ajecdj3679nobmqjs67g',
  keyId: 'aje9uf3u6tit900pmst9',
);
Map<String, dynamic> tokenParameters = {
  'service_account_id': yaServiceAccount.serviceAccountId,
  'key_id': yaServiceAccount.keyId,
};
