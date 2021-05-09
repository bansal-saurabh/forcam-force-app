part of swagger.api;

class TicketCollectionWSModel {
  
  EmbeddedTickets embedded = null;
/* Contains the linked resources: first,previous,next,last */
  Object links = null;

  CollectionProperties pagination = null;

  TicketCollectionWSModel();

  @override
  String toString() {
    return 'TicketCollectionWSModel[embedded=$embedded, links=$links, pagination=$pagination, ]';
  }

  TicketCollectionWSModel.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    embedded = new EmbeddedTickets.fromJson(json['_embedded']);
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

  static List<TicketCollectionWSModel> listFromJson(List<dynamic> json) {
    return json == null ? new List<TicketCollectionWSModel>() : json.map((value) => new TicketCollectionWSModel.fromJson(value)).toList();
  }

  static Map<String, TicketCollectionWSModel> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, TicketCollectionWSModel>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new TicketCollectionWSModel.fromJson(value));
    }
    return map;
  }
}
