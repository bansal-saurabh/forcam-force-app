part of swagger.api;

class OperationComponentCollectionProperties {
  /* Array of operation components */
  List<OperationComponent> elements = [];

  OperationComponentCollectionProperties();

  @override
  String toString() {
    return 'OperationComponentCollectionProperties[elements=$elements, ]';
  }

  OperationComponentCollectionProperties.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    elements = OperationComponent.listFromJson(json['elements']);
  }

  Map<String, dynamic> toJson() {
    return {
      'elements': elements
     };
  }

  static List<OperationComponentCollectionProperties> listFromJson(List<dynamic> json) {
    return json == null ? new List<OperationComponentCollectionProperties>() : json.map((value) => new OperationComponentCollectionProperties.fromJson(value)).toList();
  }

  static Map<String, OperationComponentCollectionProperties> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, OperationComponentCollectionProperties>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new OperationComponentCollectionProperties.fromJson(value));
    }
    return map;
  }
}
