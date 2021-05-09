part of swagger.api;

class ToolCharacteristicCollectionProperties {
  /* Array of tool characteristics */
  List<CharacteristicGeneralDefinition> elements = [];

  ToolCharacteristicCollectionProperties();

  @override
  String toString() {
    return 'ToolCharacteristicCollectionProperties[elements=$elements, ]';
  }

  ToolCharacteristicCollectionProperties.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    elements = CharacteristicGeneralDefinition.listFromJson(json['elements']);
  }

  Map<String, dynamic> toJson() {
    return {
      'elements': elements
     };
  }

  static List<ToolCharacteristicCollectionProperties> listFromJson(List<dynamic> json) {
    return json == null ? new List<ToolCharacteristicCollectionProperties>() : json.map((value) => new ToolCharacteristicCollectionProperties.fromJson(value)).toList();
  }

  static Map<String, ToolCharacteristicCollectionProperties> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ToolCharacteristicCollectionProperties>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ToolCharacteristicCollectionProperties.fromJson(value));
    }
    return map;
  }
}
