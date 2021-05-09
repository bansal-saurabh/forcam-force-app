part of swagger.api;

class TicketActivityAttachmentCollection {
  
  EmbeddedTicketActivityAttachmentWSModel embedded = null;
/* Contains the linked resources: first,previous,next,last */
  Object links = null;

  CollectionProperties pagination = null;

  TicketActivityAttachmentCollection();

  @override
  String toString() {
    return 'TicketActivityAttachmentCollection[embedded=$embedded, links=$links, pagination=$pagination, ]';
  }

  TicketActivityAttachmentCollection.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    embedded = new EmbeddedTicketActivityAttachmentWSModel.fromJson(json['_embedded']);
    links = new Object.fromJson(json['_links']);
    pagination = new CollectionProperties.fromJson(json['pagination']);
  }

  Map<String, dynamic> toJson() {
    return {
      '_embedded': embedded,
      '_links': links,
      'pagination': pagination
     };
  }

  static List<TicketActivityAttachmentCollection> listFromJson(List<dynamic> json) {
    return json == null ? new List<TicketActivityAttachmentCollection>() : json.map((value) => new TicketActivityAttachmentCollection.fromJson(value)).toList();
  }

  static Map<String, TicketActivityAttachmentCollection> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, TicketActivityAttachmentCollection>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new TicketActivityAttachmentCollection.fromJson(value));
    }
    return map;
  }
}
