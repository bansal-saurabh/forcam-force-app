part of swagger.api;

class QualityDetailsMaterialProperties {
  
  List<QualityDetailsMaterial> elements = [];

  QualityDetailsMaterialProperties();

  @override
  String toString() {
    return 'QualityDetailsMaterialProperties[elements=$elements, ]';
  }

  QualityDetailsMaterialProperties.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    elements = QualityDetailsMaterial.listFromJson(json['elements']);
  }

  Map<String, dynamic> toJson() {
    return {
      'elements': elements
     };
  }

  static List<QualityDetailsMaterialProperties> listFromJson(List<dynamic> json) {
    return json == null ? new List<QualityDetailsMaterialProperties>() : json.map((value) => new QualityDetailsMaterialProperties.fromJson(value)).toList();
  }

  static Map<String, QualityDetailsMaterialProperties> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, QualityDetailsMaterialProperties>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new QualityDetailsMaterialProperties.fromJson(value));
    }
    return map;
  }
}
