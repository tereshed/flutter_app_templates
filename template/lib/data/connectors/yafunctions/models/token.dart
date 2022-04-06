import 'dart:core';

class Token {
  String iamToken;
  DateTime expiresAt;
  Token(
    this.iamToken,
    this.expiresAt,
  );
  factory Token.fromJson(dynamic json) {
    return Token(
      json['iamToken'],
      DateTime.parse(json['expiresAt']),
    );
  }
  @override
  String toString() {
    return '{ ${iamToken}, ${expiresAt} }';
  }
}
