part of swagger.api;

class MaterialProperties {
  /* UUID of the material */
  String id = null;
/* The material number which is unique in its ERP context */
  String number = null;
/* A description of the material */
  String description = null;
/* The material type */
  String type = null;

  MaterialProperties();

  @override
  String toString() {
    return 'MaterialProperties[id=$id, number=$number, description=$description, type=$type, ]';
  }

  MaterialProperties.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    number = json['number'];
    description = json['description'];
    type = json['type'];
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'number': number,
      'description': description,
      'type': type
     };
  }

  static List<MaterialProperties> listFromJson(List<dynamic> json) {
    return json == null ? new List<MaterialProperties>() : json.map((value) => new MaterialProperties.fromJson(value)).toList();
  }

  static Map<String, MaterialProperties> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, MaterialProperties>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new MaterialProperties.fromJson(value));
    }
    return map;
  }
}
