part of swagger.api;

class OverallEquipmentEfficiency {
  /* HAL embedded objects */
  Object embedded = null;
/* HAL link objects */
  Object links = null;

  OverallEquipmentEfficiencyProperties properties = null;

  OverallEquipmentEfficiency();

  @override
  String toString() {
    return 'OverallEquipmentEfficiency[embedded=$embedded, links=$links, properties=$properties, ]';
  }

  OverallEquipmentEfficiency.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    embedded = new Object.fromJson(json['_embedded']);
    links = new Object.fromJson(json['_links']);
    properties = new OverallEquipmentEfficiencyProperties.fromJson(json['properties']);
  }

  Map<String, dynamic> toJson() {
    return {
      '_embedded': embedded,
      '_links': links,
      'properties': properties
     };
  }

  static List<OverallEquipmentEfficiency> listFromJson(List<dynamic> json) {
    return json == null ? new List<OverallEquipmentEfficiency>() : json.map((value) => new OverallEquipmentEfficiency.fromJson(value)).toList();
  }

  static Map<String, OverallEquipmentEfficiency> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, OverallEquipmentEfficiency>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new OverallEquipmentEfficiency.fromJson(value));
    }
    return map;
  }
}
