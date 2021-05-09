part of swagger.api;

class WorkplaceGroup {
  /* HAL embedded objects */
  Object embedded = null;
/* Contains the linked resources: erpKey */
  Object links = null;

  WorkplaceGroupProperties properties = null;

  WorkplaceGroup();

  @override
  String toString() {
    return 'WorkplaceGroup[embedded=$embedded, links=$links, properties=$properties, ]';
  }

  WorkplaceGroup.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    embedded = new Object.fromJson(json['_embedded']);
    links = new Object.fromJson(json['_links']);
    properties = new WorkplaceGroupProperties.fromJson(json['properties']);
  }

  Map<String, dynamic> toJson() {
    return {
      '_embedded': embedded,
      '_links': links,
      'properties': properties
     };
  }

  static List<WorkplaceGroup> listFromJson(List<dynamic> json) {
    return json == null ? new List<WorkplaceGroup>() : json.map((value) => new WorkplaceGroup.fromJson(value)).toList();
  }

  static Map<String, WorkplaceGroup> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, WorkplaceGroup>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new WorkplaceGroup.fromJson(value));
    }
    return map;
  }
}
