part of swagger.api;

class ToolEdgeProperties {
  /* UUID of the tool edge */
  String id = null;
/* A domain specific description of the cutting edge */
  String identifier = null;

  LifeTime lifeTime = null;

  ToolEdgeProperties();

  @override
  String toString() {
    return 'ToolEdgeProperties[id=$id, identifier=$identifier, lifeTime=$lifeTime, ]';
  }

  ToolEdgeProperties.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    identifier = json['identifier'];
    lifeTime = new LifeTime.fromJson(json['lifeTime']);
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'identifier': identifier,
      'lifeTime': lifeTime
     };
  }

  static List<ToolEdgeProperties> listFromJson(List<dynamic> json) {
    return json == null ? new List<ToolEdgeProperties>() : json.map((value) => new ToolEdgeProperties.fromJson(value)).toList();
  }

  static Map<String, ToolEdgeProperties> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ToolEdgeProperties>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ToolEdgeProperties.fromJson(value));
    }
    return map;
  }
}
