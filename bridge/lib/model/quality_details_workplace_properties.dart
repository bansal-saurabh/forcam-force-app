part of swagger.api;

class QualityDetailsWorkplaceProperties {
  
  List<QualityDetailsWorkplace> elements = [];

  QualityDetailsWorkplaceProperties();

  @override
  String toString() {
    return 'QualityDetailsWorkplaceProperties[elements=$elements, ]';
  }

  QualityDetailsWorkplaceProperties.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    elements = QualityDetailsWorkplace.listFromJson(json['elements']);
  }

  Map<String, dynamic> toJson() {
    return {
      'elements': elements
     };
  }

  static List<QualityDetailsWorkplaceProperties> listFromJson(List<dynamic> json) {
    return json == null ? new List<QualityDetailsWorkplaceProperties>() : json.map((value) => new QualityDetailsWorkplaceProperties.fromJson(value)).toList();
  }

  static Map<String, QualityDetailsWorkplaceProperties> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, QualityDetailsWorkplaceProperties>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new QualityDetailsWorkplaceProperties.fromJson(value));
    }
    return map;
  }
}
