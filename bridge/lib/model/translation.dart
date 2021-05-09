part of swagger.api;

class Translation {
  /* Language tag containing the language code (ISO 639) and the country code (ISO 3166) */
  String language = null;
/* Term translated into the corresponding language */
  String translation = null;

  Translation();

  @override
  String toString() {
    return 'Translation[language=$language, translation=$translation, ]';
  }

  Translation.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    language = json['language'];
    translation = json['translation'];
  }

  Map<String, dynamic> toJson() {
    return {
      'language': language,
      'translation': translation
     };
  }

  static List<Translation> listFromJson(List<dynamic> json) {
    return json == null ? new List<Translation>() : json.map((value) => new Translation.fromJson(value)).toList();
  }

  static Map<String, Translation> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Translation>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Translation.fromJson(value));
    }
    return map;
  }
}
