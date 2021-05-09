part of swagger.api;

class TicketActivityState {
  /* HAL embedded objects */
  Object embedded = null;
/* HAL link objects */
  Object links = null;

  TicketActivityStateProperties properties = null;

  TicketActivityState();

  @override
  String toString() {
    return 'TicketActivityState[embedded=$embedded, links=$links, properties=$properties, ]';
  }

  TicketActivityState.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    embedded = new Object.fromJson(json['_embedded']);
    links = new Object.fromJson(json['_links']);
    properties = new TicketActivityStateProperties.fromJson(json['properties']);
  }

  Map<String, dynamic> toJson() {
    return {
      '_embedded': embedded,
      '_links': links,
      'properties': properties
     };
  }

  static List<TicketActivityState> listFromJson(List<dynamic> json) {
    return json == null ? new List<TicketActivityState>() : json.map((value) => new TicketActivityState.fromJson(value)).toList();
  }

  static Map<String, TicketActivityState> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, TicketActivityState>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new TicketActivityState.fromJson(value));
    }
    return map;
  }
}
