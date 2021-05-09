part of swagger.api;

class Machine {
  /* HAL embedded objects */
  Object embedded = null;
/* Contains the linked resources: erpKey, description */
  Object links = null;

  MachineProperties properties = null;

  Machine();

  @override
  String toString() {
    return 'Machine[embedded=$embedded, links=$links, properties=$properties, ]';
  }

  Machine.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    embedded = new Object.fromJson(json['_embedded']);
    links = new Object.fromJson(json['_links']);
    properties = new MachineProperties.fromJson(json['properties']);
  }

  Map<String, dynamic> toJson() {
    return {
      '_embedded': embedded,
      '_links': links,
      'properties': properties
     };
  }

  static List<Machine> listFromJson(List<dynamic> json) {
    return json == null ? new List<Machine>() : json.map((value) => new Machine.fromJson(value)).toList();
  }

  static Map<String, Machine> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Machine>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Machine.fromJson(value));
    }
    return map;
  }
}
