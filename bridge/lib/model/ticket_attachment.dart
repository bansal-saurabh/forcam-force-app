part of swagger.api;

class TicketAttachment {
  /* HAL embedded objects */
  Object embedded = null;
/* HAL link objects */
  Object links = null;

  TicketAttachmentsProperties properties = null;

  TicketAttachment();

  @override
  String toString() {
    return 'TicketAttachment[embedded=$embedded, links=$links, properties=$properties, ]';
  }

  TicketAttachment.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    embedded = new Object.fromJson(json['_embedded']);
    links = new Object.fromJson(json['_links']);
    properties = new TicketAttachmentsProperties.fromJson(json['properties']);
  }

  Map<String, dynamic> toJson() {
    return {
      '_embedded': embedded,
      '_links': links,
      'properties': properties
     };
  }

  static List<TicketAttachment> listFromJson(List<dynamic> json) {
    return json == null ? new List<TicketAttachment>() : json.map((value) => new TicketAttachment.fromJson(value)).toList();
  }

  static Map<String, TicketAttachment> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, TicketAttachment>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new TicketAttachment.fromJson(value));
    }
    return map;
  }
}
