part of swagger.api;

class Tool {
  /* HAL embedded objects */
  Object embedded = null;
/* Contains the linked resources: workplace */
  Object links = null;

  ToolProperties properties = null;

  Tool();

  @override
  String toString() {
    return 'Tool[embedded=$embedded, links=$links, properties=$properties, ]';
  }

  Tool.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    embedded = new Object.fromJson(json['_embedded']);
    links = new Object.fromJson(json['_links']);
    properties = new ToolProperties.fromJson(json['properties']);
  }

  Map<String, dynamic> toJson() {
    return {
      '_embedded': embedded,
      '_links': links,
      'properties': properties
     };
  }

  static List<Tool> listFromJson(List<dynamic> json) {
    return json == null ? new List<Tool>() : json.map((value) => new Tool.fromJson(value)).toList();
  }

  static Map<String, Tool> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Tool>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Tool.fromJson(value));
    }
    return map;
  }
}
