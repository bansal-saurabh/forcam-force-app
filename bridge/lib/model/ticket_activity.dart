part of swagger.api;

class TicketActivity {
  /* HAL embedded objects */
  Object embedded = null;
/* HAL link objects */
  Object links = null;

  TicketActivityProperties properties = null;

  TicketActivity();

  @override
  String toString() {
    return 'TicketActivity[embedded=$embedded, links=$links, properties=$properties, ]';
  }

  TicketActivity.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    embedded = new Object.fromJson(json['_embedded']);
    links = new Object.fromJson(json['_links']);
    properties = new TicketActivityProperties.fromJson(json['properties']);
  }

  Map<String, dynamic> toJson() {
    return {
      '_embedded': embedded,
      '_links': links,
      'properties': properties
     };
  }

  static List<TicketActivity> listFromJson(List<dynamic> json) {
    return json == null ? new List<TicketActivity>() : json.map((value) => new TicketActivity.fromJson(value)).toList();
  }

  static Map<String, TicketActivity> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, TicketActivity>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new TicketActivity.fromJson(value));
    }
    return map;
  }
}
