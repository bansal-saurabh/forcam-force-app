part of swagger.api;

class OperationSpecification {
  /* HAL embedded objects */
  Object embedded = null;
/* HAL link objects */
  Object links = null;

  OperationSpecificationProperties properties = null;

  OperationSpecification();

  @override
  String toString() {
    return 'OperationSpecification[embedded=$embedded, links=$links, properties=$properties, ]';
  }

  OperationSpecification.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    embedded = new Object.fromJson(json['_embedded']);
    links = new Object.fromJson(json['_links']);
    properties = new OperationSpecificationProperties.fromJson(json['properties']);
  }

  Map<String, dynamic> toJson() {
    return {
      '_embedded': embedded,
      '_links': links,
      'properties': properties
     };
  }

  static List<OperationSpecification> listFromJson(List<dynamic> json) {
    return json == null ? new List<OperationSpecification>() : json.map((value) => new OperationSpecification.fromJson(value)).toList();
  }

  static Map<String, OperationSpecification> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, OperationSpecification>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new OperationSpecification.fromJson(value));
    }
    return map;
  }
}
