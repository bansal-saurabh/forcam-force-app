part of swagger.api;

class ToolProperties {
  /* UUID of the tool */
  String id = null;
/* Technical description of the tool */
  String name = null;
/* Description of the tool */
  String description = null;
/* A domain specific identifier of the tool in practice, which is usually the tool number */
  String identifier1 = null;
/* An additional identifier of the tool in operational practice */
  String identifier2 = null;
/* An additional identifier of the tool in operational practice */
  String identifier3 = null;
/* ID of the tool state */
  String toolStateId = null;
/* URL at which the technical documents for the tool can be found */
  String documentUrl = null;

  ToolIdentifierValue group = null;

  ToolIdentifierValue class_ = null;

  LifeTime lifeTime = null;

  ToolProperties();

  @override
  String toString() {
    return 'ToolProperties[id=$id, name=$name, description=$description, identifier1=$identifier1, identifier2=$identifier2, identifier3=$identifier3, toolStateId=$toolStateId, documentUrl=$documentUrl, group=$group, class_=$class_, lifeTime=$lifeTime, ]';
  }

  ToolProperties.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    name = json['name'];
    description = json['description'];
    identifier1 = json['identifier1'];
    identifier2 = json['identifier2'];
    identifier3 = json['identifier3'];
    toolStateId = json['toolStateId'];
    documentUrl = json['documentUrl'];
    group = new ToolIdentifierValue.fromJson(json['group']);
    class_ = new ToolIdentifierValue.fromJson(json['class']);
    lifeTime = new LifeTime.fromJson(json['lifeTime']);
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'description': description,
      'identifier1': identifier1,
      'identifier2': identifier2,
      'identifier3': identifier3,
      'toolStateId': toolStateId,
      'documentUrl': documentUrl,
      'group': group,
      'class': class_,
      'lifeTime': lifeTime
     };
  }

  static List<ToolProperties> listFromJson(List<dynamic> json) {
    return json == null ? new List<ToolProperties>() : json.map((value) => new ToolProperties.fromJson(value)).toList();
  }

  static Map<String, ToolProperties> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ToolProperties>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ToolProperties.fromJson(value));
    }
    return map;
  }
}
