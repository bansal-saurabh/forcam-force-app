part of swagger.api;

class OperationMaterialCharacteristics {
  /* HAL embedded objects */
  Object embedded = null;
/* HAL link objects */
  Object links = null;

  List<CharacteristicGeneralDefinition> elements = [];

  OperationMaterialCharacteristics();

  @override
  String toString() {
    return 'OperationMaterialCharacteristics[embedded=$embedded, links=$links, elements=$elements, ]';
  }

  OperationMaterialCharacteristics.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    embedded = new Object.fromJson(json['_embedded']);
    links = new Object.fromJson(json['_links']);
    elements = CharacteristicGeneralDefinition.listFromJson(json['elements']);
  }

  Map<String, dynamic> toJson() {
    return {
      '_embedded': embedded,
      '_links': links,
      'elements': elements
     };
  }

  static List<OperationMaterialCharacteristics> listFromJson(List<dynamic> json) {
    return json == null ? new List<OperationMaterialCharacteristics>() : json.map((value) => new OperationMaterialCharacteristics.fromJson(value)).toList();
  }

  static Map<String, OperationMaterialCharacteristics> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, OperationMaterialCharacteristics>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new OperationMaterialCharacteristics.fromJson(value));
    }
    return map;
  }
}
