part of swagger.api;

class Workplace {
  /* HAL embedded objects */
  Object embedded = null;
/* Contains the linked resources: erpKey */
  Object links = null;

  WorkplaceProperties properties = null;

  Workplace();

  @override
  String toString() {
    return 'Workplace[embedded=$embedded, links=$links, properties=$properties, ]';
  }

  Workplace.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    embedded = new Object.fromJson(json['_embedded']);
    links = new Object.fromJson(json['_links']);
    properties = new WorkplaceProperties.fromJson(json['properties']);
  }

  Map<String, dynamic> toJson() {
    return {
      '_embedded': embedded,
      '_links': links,
      'properties': properties
     };
  }

  static List<Workplace> listFromJson(List<dynamic> json) {
    return json == null ? new List<Workplace>() : json.map((value) => new Workplace.fromJson(value)).toList();
  }

  static Map<String, Workplace> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Workplace>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Workplace.fromJson(value));
    }
    return map;
  }
}
