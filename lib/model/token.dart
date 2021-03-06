import 'package:json_annotation/json_annotation.dart';

/// This allows the `Token` class to access private members in
/// the generated file. The value for this is *.g.dart, where
/// the star denotes the source file name.
part 'token.g.dart';

/// An annotation for the code generator to know that this class needs the
/// JSON serialization logic to be generated.
@JsonSerializable()
class Token {
  Token(this.access_token, this.refresh_token, this.token_type, this.expires_in, this.scope);

  String access_token;
  String refresh_token;
  String token_type;
  int expires_in;
  String scope;

  /// A necessary factory constructor for creating a new User instance
  /// from a map. Pass the map to the generated `_$TokenFromJson()` constructor.
  /// The constructor is named after the source class, in this case, User.
  factory Token.fromJson(Map<String, dynamic> json) => _$TokenFromJson(json);

  /// `toJson` is the convention for a class to declare support for serialization
  /// to JSON. The implementation simply calls the private, generated
  /// helper method `_$TokenToJson`.
  Map<String, dynamic> toJson() => _$TokenToJson(this);
}