part of swagger.api;

class TicketActivityRemark {
  /* HAL embedded objects */
  Object embedded = null;
/* HAL link objects */
  Object links = null;

  TicketActivityRemarkProperties properties = null;

  TicketActivityRemark();

  @override
  String toString() {
    return 'TicketActivityRemark[embedded=$embedded, links=$links, properties=$properties, ]';
  }

  TicketActivityRemark.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    embedded = new Object.fromJson(json['_embedded']);
    links = new Object.fromJson(json['_links']);
    properties = new TicketActivityRemarkProperties.fromJson(json['properties']);
  }

  Map<String, dynamic> toJson() {
    return {
      '_embedded': embedded,
      '_links': links,
      'properties': properties
     };
  }

  static List<TicketActivityRemark> listFromJson(List<dynamic> json) {
    return json == null ? new List<TicketActivityRemark>() : json.map((value) => new TicketActivityRemark.fromJson(value)).toList();
  }

  static Map<String, TicketActivityRemark> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, TicketActivityRemark>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new TicketActivityRemark.fromJson(value));
    }
    return map;
  }
}
