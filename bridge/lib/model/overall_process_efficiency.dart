part of swagger.api;

class OverallProcessEfficiency {
  /* HAL embedded objects */
  Object embedded = null;
/* HAL link objects */
  Object links = null;

  OverallProcessEfficiencyProperties properties = null;

  OverallProcessEfficiency();

  @override
  String toString() {
    return 'OverallProcessEfficiency[embedded=$embedded, links=$links, properties=$properties, ]';
  }

  OverallProcessEfficiency.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    embedded = new Object.fromJson(json['_embedded']);
    links = new Object.fromJson(json['_links']);
    properties = new OverallProcessEfficiencyProperties.fromJson(json['properties']);
  }

  Map<String, dynamic> toJson() {
    return {
      '_embedded': embedded,
      '_links': links,
      'properties': properties
     };
  }

  static List<OverallProcessEfficiency> listFromJson(List<dynamic> json) {
    return json == null ? new List<OverallProcessEfficiency>() : json.map((value) => new OverallProcessEfficiency.fromJson(value)).toList();
  }

  static Map<String, OverallProcessEfficiency> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, OverallProcessEfficiency>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new OverallProcessEfficiency.fromJson(value));
    }
    return map;
  }
}
