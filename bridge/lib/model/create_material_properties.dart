part of swagger.api;

class CreateMaterialProperties {
  /* The material number which is unique in its ERP context */
  String number = null;
/* A description of the material */
  String description = null;
/* The material type */
  String type = null;

  CreateMaterialProperties();

  @override
  String toString() {
    return 'CreateMaterialProperties[number=$number, description=$description, type=$type, ]';
  }

  CreateMaterialProperties.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    number = json['number'];
    description = json['description'];
    type = json['type'];
  }

  Map<String, dynamic> toJson() {
    return {
      'number': number,
      'description': description,
      'type': type
     };
  }

  static List<CreateMaterialProperties> listFromJson(List<dynamic> json) {
    return json == null ? new List<CreateMaterialProperties>() : json.map((value) => new CreateMaterialProperties.fromJson(value)).toList();
  }

  static Map<String, CreateMaterialProperties> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, CreateMaterialProperties>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new CreateMaterialProperties.fromJson(value));
    }
    return map;
  }
}
