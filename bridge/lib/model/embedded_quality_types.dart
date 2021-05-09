part of swagger.api;

class EmbeddedQualityTypes {
  /* The operation quantity types */
  List<QualityType> operationQuantityTypes = [];

  EmbeddedQualityTypes();

  @override
  String toString() {
    return 'EmbeddedQualityTypes[operationQuantityTypes=$operationQuantityTypes, ]';
  }

  EmbeddedQualityTypes.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    operationQuantityTypes = QualityType.listFromJson(json['operationQuantityTypes']);
  }

  Map<String, dynamic> toJson() {
    return {
      'operationQuantityTypes': operationQuantityTypes
     };
  }

  static List<EmbeddedQualityTypes> listFromJson(List<dynamic> json) {
    return json == null ? new List<EmbeddedQualityTypes>() : json.map((value) => new EmbeddedQualityTypes.fromJson(value)).toList();
  }

  static Map<String, EmbeddedQualityTypes> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, EmbeddedQualityTypes>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new EmbeddedQualityTypes.fromJson(value));
    }
    return map;
  }
}
