part of swagger.api;

class OperatingState {
  /* HAL embedded objects */
  Object embedded = null;
/* HAL link objects */
  Object links = null;

  OperatingStateProperties properties = null;

  OperatingState();

  @override
  String toString() {
    return 'OperatingState[embedded=$embedded, links=$links, properties=$properties, ]';
  }

  OperatingState.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    embedded = new Object.fromJson(json['_embedded']);
    links = new Object.fromJson(json['_links']);
    properties = new OperatingStateProperties.fromJson(json['properties']);
  }

  Map<String, dynamic> toJson() {
    return {
      '_embedded': embedded,
      '_links': links,
      'properties': properties
     };
  }

  static List<OperatingState> listFromJson(List<dynamic> json) {
    return json == null ? new List<OperatingState>() : json.map((value) => new OperatingState.fromJson(value)).toList();
  }

  static Map<String, OperatingState> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, OperatingState>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new OperatingState.fromJson(value));
    }
    return map;
  }
}
