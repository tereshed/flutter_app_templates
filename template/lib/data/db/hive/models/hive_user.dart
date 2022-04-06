import 'package:hive/hive.dart';
part 'hive_user.g.dart';

@HiveType(typeId: 0)
class User extends HiveObject {
  @HiveField(0)
  String? token;

  @HiveField(1)
  DateTime? dataExpired;

  User({
    this.token,
    this.dataExpired,
  });
}
