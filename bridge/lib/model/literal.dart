part of swagger.api;

class Literal {
  /* HAL embedded objects */
  Object embedded = null;
/* HAL link objects */
  Object links = null;

  LiteralProperties properties = null;

  Literal();

  @override
  String toString() {
    return 'Literal[embedded=$embedded, links=$links, properties=$properties, ]';
  }

  Literal.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    embedded = new Object.fromJson(json['_embedded']);
    links = new Object.fromJson(json['_links']);
    properties = new LiteralProperties.fromJson(json['properties']);
  }

  Map<String, dynamic> toJson() {
    return {
      '_embedded': embedded,
      '_links': links,
      'properties': properties
     };
  }

  static List<Literal> listFromJson(List<dynamic> json) {
    return json == null ? new List<Literal>() : json.map((value) => new Literal.fromJson(value)).toList();
  }

  static Map<String, Literal> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Literal>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Literal.fromJson(value));
    }
    return map;
  }
}
