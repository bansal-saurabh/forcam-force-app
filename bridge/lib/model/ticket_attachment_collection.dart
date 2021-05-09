part of swagger.api;

class TicketAttachmentCollection {
  
  EmbeddedTicketAttachmentsWSModel embedded = null;
/* Contains the linked resources: first,previous,next,last */
  Object links = null;

  CollectionProperties pagination = null;

  TicketAttachmentCollection();

  @override
  String toString() {
    return 'TicketAttachmentCollection[embedded=$embedded, links=$links, pagination=$pagination, ]';
  }

  TicketAttachmentCollection.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    embedded = new EmbeddedTicketAttachmentsWSModel.fromJson(json['_embedded']);
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

  static List<TicketAttachmentCollection> listFromJson(List<dynamic> json) {
    return json == null ? new List<TicketAttachmentCollection>() : json.map((value) => new TicketAttachmentCollection.fromJson(value)).toList();
  }

  static Map<String, TicketAttachmentCollection> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, TicketAttachmentCollection>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new TicketAttachmentCollection.fromJson(value));
    }
    return map;
  }
}
