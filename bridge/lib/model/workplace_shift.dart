part of swagger.api;

class WorkplaceShift {
  /* HAL embedded objects */
  Object embedded = null;
/* Contains the linked resources: shift */
  Object links = null;

  WorkplaceShiftProperties properties = null;

  WorkplaceShift();

  @override
  String toString() {
    return 'WorkplaceShift[embedded=$embedded, links=$links, properties=$properties, ]';
  }

  WorkplaceShift.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    embedded = new Object.fromJson(json['_embedded']);
    links = new Object.fromJson(json['_links']);
    properties = new WorkplaceShiftProperties.fromJson(json['properties']);
  }

  Map<String, dynamic> toJson() {
    return {
      '_embedded': embedded,
      '_links': links,
      'properties': properties
     };
  }

  static List<WorkplaceShift> listFromJson(List<dynamic> json) {
    return json == null ? new List<WorkplaceShift>() : json.map((value) => new WorkplaceShift.fromJson(value)).toList();
  }

  static Map<String, WorkplaceShift> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, WorkplaceShift>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new WorkplaceShift.fromJson(value));
    }
    return map;
  }
}
