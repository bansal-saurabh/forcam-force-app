part of swagger.api;

class TicketState {
  /* HAL embedded objects */
  Object embedded = null;
/* HAL link objects */
  Object links = null;

  TicketStateProperties properties = null;

  TicketState();

  @override
  String toString() {
    return 'TicketState[embedded=$embedded, links=$links, properties=$properties, ]';
  }

  TicketState.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    embedded = new Object.fromJson(json['_embedded']);
    links = new Object.fromJson(json['_links']);
    properties = new TicketStateProperties.fromJson(json['properties']);
  }

  Map<String, dynamic> toJson() {
    return {
      '_embedded': embedded,
      '_links': links,
      'properties': properties
     };
  }

  static List<TicketState> listFromJson(List<dynamic> json) {
    return json == null ? new List<TicketState>() : json.map((value) => new TicketState.fromJson(value)).toList();
  }

  static Map<String, TicketState> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, TicketState>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new TicketState.fromJson(value));
    }
    return map;
  }
}
