// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'token.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Token _$TokenFromJson(Map<String, dynamic> json) {
  return Token(
    json['access_token'] as String,
    json['refresh_token'] as String,
    json['token_type'] as String,
    json['expires_in'] as int,
    json['scope'] as String,
  );
}

Map<String, dynamic> _$TokenToJson(Token instance) => <String, dynamic>{
      'access_token': instance.access_token,
      'refresh_token': instance.refresh_token,
      'token_type': instance.token_type,
      'expires_in': instance.expires_in,
      'scope': instance.scope,
    };
