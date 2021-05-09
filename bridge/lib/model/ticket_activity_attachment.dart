part of swagger.api;

class TicketActivityAttachment {
  /* HAL embedded objects */
  Object embedded = null;
/* HAL link objects */
  Object links = null;

  TicketActivityAttachmentProperties properties = null;

  TicketActivityAttachment();

  @override
  String toString() {
    return 'TicketActivityAttachment[embedded=$embedded, links=$links, properties=$properties, ]';
  }

  TicketActivityAttachment.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    embedded = new Object.fromJson(json['_embedded']);
    links = new Object.fromJson(json['_links']);
    properties = new TicketActivityAttachmentProperties.fromJson(json['properties']);
  }

  Map<String, dynamic> toJson() {
    return {
      '_embedded': embedded,
      '_links': links,
      'properties': properties
     };
  }

  static List<TicketActivityAttachment> listFromJson(List<dynamic> json) {
    return json == null ? new List<TicketActivityAttachment>() : json.map((value) => new TicketActivityAttachment.fromJson(value)).toList();
  }

  static Map<String, TicketActivityAttachment> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, TicketActivityAttachment>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new TicketActivityAttachment.fromJson(value));
    }
    return map;
  }
}
