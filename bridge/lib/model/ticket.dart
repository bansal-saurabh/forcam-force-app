part of swagger.api;

class Ticket {
  /* HAL embedded objects */
  Object embedded = null;
/* HAL link objects */
  Object links = null;

  TicketProperties properties = null;

  Ticket();

  @override
  String toString() {
    return 'Ticket[embedded=$embedded, links=$links, properties=$properties, ]';
  }

  Ticket.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    embedded = new Object.fromJson(json['_embedded']);
    links = new Object.fromJson(json['_links']);
    properties = new TicketProperties.fromJson(json['properties']);
  }

  Map<String, dynamic> toJson() {
    return {
      '_embedded': embedded,
      '_links': links,
      'properties': properties
     };
  }

  static List<Ticket> listFromJson(List<dynamic> json) {
    return json == null ? new List<Ticket>() : json.map((value) => new Ticket.fromJson(value)).toList();
  }

  static Map<String, Ticket> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Ticket>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Ticket.fromJson(value));
    }
    return map;
  }
}
