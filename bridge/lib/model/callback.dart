part of swagger.api;

class Callback {
  /* HAL embedded objects */
  Object embedded = null;
/* HAL link objects */
  Object links = null;

  CallbackProperties properties = null;

  Callback();

  @override
  String toString() {
    return 'Callback[embedded=$embedded, links=$links, properties=$properties, ]';
  }

  Callback.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    embedded = new Object.fromJson(json['_embedded']);
    links = new Object.fromJson(json['_links']);
    properties = new CallbackProperties.fromJson(json['properties']);
  }

  Map<String, dynamic> toJson() {
    return {
      '_embedded': embedded,
      '_links': links,
      'properties': properties
     };
  }

  static List<Callback> listFromJson(List<dynamic> json) {
    return json == null ? new List<Callback>() : json.map((value) => new Callback.fromJson(value)).toList();
  }

  static Map<String, Callback> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Callback>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Callback.fromJson(value));
    }
    return map;
  }
}
