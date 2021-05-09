part of swagger.api;

class OperationCurrentProductionData {
  /* HAL embedded objects */
  Object embedded = null;
/* HAL link objects */
  Object links = null;

  OperationCurrentProductionDataProperties properties = null;

  OperationCurrentProductionData();

  @override
  String toString() {
    return 'OperationCurrentProductionData[embedded=$embedded, links=$links, properties=$properties, ]';
  }

  OperationCurrentProductionData.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    embedded = new Object.fromJson(json['_embedded']);
    links = new Object.fromJson(json['_links']);
    properties = new OperationCurrentProductionDataProperties.fromJson(json['properties']);
  }

  Map<String, dynamic> toJson() {
    return {
      '_embedded': embedded,
      '_links': links,
      'properties': properties
     };
  }

  static List<OperationCurrentProductionData> listFromJson(List<dynamic> json) {
    return json == null ? new List<OperationCurrentProductionData>() : json.map((value) => new OperationCurrentProductionData.fromJson(value)).toList();
  }

  static Map<String, OperationCurrentProductionData> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, OperationCurrentProductionData>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new OperationCurrentProductionData.fromJson(value));
    }
    return map;
  }
}
