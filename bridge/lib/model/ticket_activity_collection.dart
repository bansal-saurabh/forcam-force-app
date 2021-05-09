part of swagger.api;

class TicketActivityCollection {
  
  EmbeddedTicketActivitiesWSModel embedded = null;
/* Contains the linked resources: first,previous,next,last */
  Object links = null;

  CollectionProperties pagination = null;

  TicketActivityCollection();

  @override
  String toString() {
    return 'TicketActivityCollection[embedded=$embedded, links=$links, pagination=$pagination, ]';
  }

  TicketActivityCollection.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    embedded = new EmbeddedTicketActivitiesWSModel.fromJson(json['_embedded']);
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

  static List<TicketActivityCollection> listFromJson(List<dynamic> json) {
    return json == null ? new List<TicketActivityCollection>() : json.map((value) => new TicketActivityCollection.fromJson(value)).toList();
  }

  static Map<String, TicketActivityCollection> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, TicketActivityCollection>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new TicketActivityCollection.fromJson(value));
    }
    return map;
  }
}
