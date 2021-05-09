part of swagger.api;

class QualityType {
  /* HAL embedded objects */
  Object embedded = null;
/* HAL link objects */
  Object links = null;

  QualityTypeProperties properties = null;

  QualityType();

  @override
  String toString() {
    return 'QualityType[embedded=$embedded, links=$links, properties=$properties, ]';
  }

  QualityType.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    embedded = new Object.fromJson(json['_embedded']);
    links = new Object.fromJson(json['_links']);
    properties = new QualityTypeProperties.fromJson(json['properties']);
  }

  Map<String, dynamic> toJson() {
    return {
      '_embedded': embedded,
      '_links': links,
      'properties': properties
     };
  }

  static List<QualityType> listFromJson(List<dynamic> json) {
    return json == null ? new List<QualityType>() : json.map((value) => new QualityType.fromJson(value)).toList();
  }

  static Map<String, QualityType> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, QualityType>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new QualityType.fromJson(value));
    }
    return map;
  }
}
