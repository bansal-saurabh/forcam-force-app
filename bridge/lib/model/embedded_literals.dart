part of swagger.api;

class EmbeddedLiterals {
  /* The literals */
  List<Literal> literals = [];

  EmbeddedLiterals();

  @override
  String toString() {
    return 'EmbeddedLiterals[literals=$literals, ]';
  }

  EmbeddedLiterals.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    literals = Literal.listFromJson(json['literals']);
  }

  Map<String, dynamic> toJson() {
    return {
      'literals': literals
     };
  }

  static List<EmbeddedLiterals> listFromJson(List<dynamic> json) {
    return json == null ? new List<EmbeddedLiterals>() : json.map((value) => new EmbeddedLiterals.fromJson(value)).toList();
  }

  static Map<String, EmbeddedLiterals> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, EmbeddedLiterals>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new EmbeddedLiterals.fromJson(value));
    }
    return map;
  }
}
