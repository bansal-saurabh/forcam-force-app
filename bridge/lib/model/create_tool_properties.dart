part of swagger.api;

class CreateToolProperties {
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
/* URL at which the technical documents for the tool can be found */
  String documentUrl = null;

  ToolIdentifierValue group = null;

  ToolIdentifierValue class_ = null;

  LifeTime lifeTime = null;

  CreateToolLocationProperties location = null;
/* Characteristics of the tool */
  List<CharacteristicGeneralDefinition> characteristics = [];

  CreateToolProperties();

  @override
  String toString() {
    return 'CreateToolProperties[name=$name, description=$description, identifier1=$identifier1, identifier2=$identifier2, identifier3=$identifier3, documentUrl=$documentUrl, group=$group, class_=$class_, lifeTime=$lifeTime, location=$location, characteristics=$characteristics, ]';
  }

  CreateToolProperties.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    name = json['name'];
    description = json['description'];
    identifier1 = json['identifier1'];
    identifier2 = json['identifier2'];
    identifier3 = json['identifier3'];
    documentUrl = json['documentUrl'];
    group = new ToolIdentifierValue.fromJson(json['group']);
    class_ = new ToolIdentifierValue.fromJson(json['class']);
    lifeTime = new LifeTime.fromJson(json['lifeTime']);
    location = new CreateToolLocationProperties.fromJson(json['location']);
    characteristics = CharacteristicGeneralDefinition.listFromJson(json['characteristics']);
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'description': description,
      'identifier1': identifier1,
      'identifier2': identifier2,
      'identifier3': identifier3,
      'documentUrl': documentUrl,
      'group': group,
      'class': class_,
      'lifeTime': lifeTime,
      'location': location,
      'characteristics': characteristics
     };
  }

  static List<CreateToolProperties> listFromJson(List<dynamic> json) {
    return json == null ? new List<CreateToolProperties>() : json.map((value) => new CreateToolProperties.fromJson(value)).toList();
  }

  static Map<String, CreateToolProperties> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, CreateToolProperties>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new CreateToolProperties.fromJson(value));
    }
    return map;
  }
}
