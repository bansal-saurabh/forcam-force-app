part of swagger.api;

class LiteralProperties {
  /* UUID of the literal */
  String id = null;
/* Array of translations */
  List<Translation> translations = [];

  LiteralProperties();

  @override
  String toString() {
    return 'LiteralProperties[id=$id, translations=$translations, ]';
  }

  LiteralProperties.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    translations = Translation.listFromJson(json['translations']);
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'translations': translations
     };
  }

  static List<LiteralProperties> listFromJson(List<dynamic> json) {
    return json == null ? new List<LiteralProperties>() : json.map((value) => new LiteralProperties.fromJson(value)).toList();
  }

  static Map<String, LiteralProperties> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, LiteralProperties>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new LiteralProperties.fromJson(value));
    }
    return map;
  }
}
