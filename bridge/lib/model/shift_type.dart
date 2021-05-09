part of swagger.api;

class ShiftType {
  /* HAL embedded objects */
  Object embedded = null;
/* Contains the linked resources: shiftType */
  Object links = null;

  ShiftTypeProperties properties = null;

  ShiftType();

  @override
  String toString() {
    return 'ShiftType[embedded=$embedded, links=$links, properties=$properties, ]';
  }

  ShiftType.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    embedded = new Object.fromJson(json['_embedded']);
    links = new Object.fromJson(json['_links']);
    properties = new ShiftTypeProperties.fromJson(json['properties']);
  }

  Map<String, dynamic> toJson() {
    return {
      '_embedded': embedded,
      '_links': links,
      'properties': properties
     };
  }

  static List<ShiftType> listFromJson(List<dynamic> json) {
    return json == null ? new List<ShiftType>() : json.map((value) => new ShiftType.fromJson(value)).toList();
  }

  static Map<String, ShiftType> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ShiftType>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ShiftType.fromJson(value));
    }
    return map;
  }
}
