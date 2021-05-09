part of swagger.api;

class EntryPoint {
  /* HAL embedded objects */
  Object embedded = null;
/* HAL link objects */
  Object links = null;

  EntryPointProperties properties = null;

  EntryPoint();

  @override
  String toString() {
    return 'EntryPoint[embedded=$embedded, links=$links, properties=$properties, ]';
  }

  EntryPoint.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    embedded = new Object.fromJson(json['_embedded']);
    links = new Object.fromJson(json['_links']);
    properties = new EntryPointProperties.fromJson(json['properties']);
  }

  Map<String, dynamic> toJson() {
    return {
      '_embedded': embedded,
      '_links': links,
      'properties': properties
     };
  }

  static List<EntryPoint> listFromJson(List<dynamic> json) {
    return json == null ? new List<EntryPoint>() : json.map((value) => new EntryPoint.fromJson(value)).toList();
  }

  static Map<String, EntryPoint> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, EntryPoint>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new EntryPoint.fromJson(value));
    }
    return map;
  }
}
