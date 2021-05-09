part of swagger.api;

class TicketActivityRemarkCollection {
  
  EmbeddedTicketActivityRemarkWSModel embedded = null;
/* Contains the linked resources: first,previous,next,last */
  Object links = null;

  CollectionProperties pagination = null;

  TicketActivityRemarkCollection();

  @override
  String toString() {
    return 'TicketActivityRemarkCollection[embedded=$embedded, links=$links, pagination=$pagination, ]';
  }

  TicketActivityRemarkCollection.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    embedded = new EmbeddedTicketActivityRemarkWSModel.fromJson(json['_embedded']);
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

  static List<TicketActivityRemarkCollection> listFromJson(List<dynamic> json) {
    return json == null ? new List<TicketActivityRemarkCollection>() : json.map((value) => new TicketActivityRemarkCollection.fromJson(value)).toList();
  }

  static Map<String, TicketActivityRemarkCollection> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, TicketActivityRemarkCollection>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new TicketActivityRemarkCollection.fromJson(value));
    }
    return map;
  }
}
