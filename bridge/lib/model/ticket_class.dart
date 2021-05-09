part of swagger.api;

class TicketClass {
  /* HAL embedded objects */
  Object embedded = null;
/* HAL link objects */
  Object links = null;

  TicketClassProperties properties = null;

  TicketClass();

  @override
  String toString() {
    return 'TicketClass[embedded=$embedded, links=$links, properties=$properties, ]';
  }

  TicketClass.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    embedded = new Object.fromJson(json['_embedded']);
    links = new Object.fromJson(json['_links']);
    properties = new TicketClassProperties.fromJson(json['properties']);
  }

  Map<String, dynamic> toJson() {
    return {
      '_embedded': embedded,
      '_links': links,
      'properties': properties
     };
  }

  static List<TicketClass> listFromJson(List<dynamic> json) {
    return json == null ? new List<TicketClass>() : json.map((value) => new TicketClass.fromJson(value)).toList();
  }

  static Map<String, TicketClass> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, TicketClass>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new TicketClass.fromJson(value));
    }
    return map;
  }
}
