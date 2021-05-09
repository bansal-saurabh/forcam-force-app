part of swagger.api;

class CreateToolEdgeProperties {
  /* A domain specific description of the cutting edge */
  String identifier = null;

  LifeTime lifeTime = null;
/* Characteristics of the tool edge */
  List<CharacteristicGeneralDefinition> characteristics = [];

  CreateToolEdgeProperties();

  @override
  String toString() {
    return 'CreateToolEdgeProperties[identifier=$identifier, lifeTime=$lifeTime, characteristics=$characteristics, ]';
  }

  CreateToolEdgeProperties.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    identifier = json['identifier'];
    lifeTime = new LifeTime.fromJson(json['lifeTime']);
    characteristics = CharacteristicGeneralDefinition.listFromJson(json['characteristics']);
  }

  Map<String, dynamic> toJson() {
    return {
      'identifier': identifier,
      'lifeTime': lifeTime,
      'characteristics': characteristics
     };
  }

  static List<CreateToolEdgeProperties> listFromJson(List<dynamic> json) {
    return json == null ? new List<CreateToolEdgeProperties>() : json.map((value) => new CreateToolEdgeProperties.fromJson(value)).toList();
  }

  static Map<String, CreateToolEdgeProperties> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, CreateToolEdgeProperties>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new CreateToolEdgeProperties.fromJson(value));
    }
    return map;
  }
}
