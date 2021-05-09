part of swagger.api;

class StatusDefinition {
  /* HAL embedded objects */
  Object embedded = null;
/* HAL link objects */
  Object links = null;

  StatusDefinitionProperties properties = null;

  StatusDefinition();

  @override
  String toString() {
    return 'StatusDefinition[embedded=$embedded, links=$links, properties=$properties, ]';
  }

  StatusDefinition.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    embedded = new Object.fromJson(json['_embedded']);
    links = new Object.fromJson(json['_links']);
    properties = new StatusDefinitionProperties.fromJson(json['properties']);
  }

  Map<String, dynamic> toJson() {
    return {
      '_embedded': embedded,
      '_links': links,
      'properties': properties
     };
  }

  static List<StatusDefinition> listFromJson(List<dynamic> json) {
    return json == null ? new List<StatusDefinition>() : json.map((value) => new StatusDefinition.fromJson(value)).toList();
  }

  static Map<String, StatusDefinition> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, StatusDefinition>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new StatusDefinition.fromJson(value));
    }
    return map;
  }
}
