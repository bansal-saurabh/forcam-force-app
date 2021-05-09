part of swagger.api;

class ToolEdge {
  /* HAL embedded objects */
  Object embedded = null;
/* HAL link objects */
  Object links = null;

  ToolEdgeProperties properties = null;

  ToolEdge();

  @override
  String toString() {
    return 'ToolEdge[embedded=$embedded, links=$links, properties=$properties, ]';
  }

  ToolEdge.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    embedded = new Object.fromJson(json['_embedded']);
    links = new Object.fromJson(json['_links']);
    properties = new ToolEdgeProperties.fromJson(json['properties']);
  }

  Map<String, dynamic> toJson() {
    return {
      '_embedded': embedded,
      '_links': links,
      'properties': properties
     };
  }

  static List<ToolEdge> listFromJson(List<dynamic> json) {
    return json == null ? new List<ToolEdge>() : json.map((value) => new ToolEdge.fromJson(value)).toList();
  }

  static Map<String, ToolEdge> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ToolEdge>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ToolEdge.fromJson(value));
    }
    return map;
  }
}
