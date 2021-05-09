part of swagger.api;

class Operation {
  /* HAL embedded objects */
  Object embedded = null;
/* Contains the linked resources: order, erpKey, plannedDates, */
  Object links = null;

  OperationProperties properties = null;

  Operation();

  @override
  String toString() {
    return 'Operation[embedded=$embedded, links=$links, properties=$properties, ]';
  }

  Operation.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    embedded = new Object.fromJson(json['_embedded']);
    links = new Object.fromJson(json['_links']);
    properties = new OperationProperties.fromJson(json['properties']);
  }

  Map<String, dynamic> toJson() {
    return {
      '_embedded': embedded,
      '_links': links,
      'properties': properties
     };
  }

  static List<Operation> listFromJson(List<dynamic> json) {
    return json == null ? new List<Operation>() : json.map((value) => new Operation.fromJson(value)).toList();
  }

  static Map<String, Operation> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Operation>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Operation.fromJson(value));
    }
    return map;
  }
}
