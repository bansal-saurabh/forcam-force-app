part of swagger.api;

class StatusDefinitionProperties {
  /* UUID of the status definition */
  String id = null;
/* The description of the status definition */
  String description = null;
/* An additional short description */
  String shortDescription = null;
/* The code of the status definition */
  String code = null;
/* The hexadecimal value of the color assigned to the status definition */
  String color = null;

  StatusDefinitionProperties();

  @override
  String toString() {
    return 'StatusDefinitionProperties[id=$id, description=$description, shortDescription=$shortDescription, code=$code, color=$color, ]';
  }

  StatusDefinitionProperties.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    description = json['description'];
    shortDescription = json['shortDescription'];
    code = json['code'];
    color = json['color'];
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'description': description,
      'shortDescription': shortDescription,
      'code': code,
      'color': color
     };
  }

  static List<StatusDefinitionProperties> listFromJson(List<dynamic> json) {
    return json == null ? new List<StatusDefinitionProperties>() : json.map((value) => new StatusDefinitionProperties.fromJson(value)).toList();
  }

  static Map<String, StatusDefinitionProperties> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, StatusDefinitionProperties>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new StatusDefinitionProperties.fromJson(value));
    }
    return map;
  }
}
