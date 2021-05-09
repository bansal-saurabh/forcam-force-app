part of swagger.api;

class TicketClassCollectionWSModel {
  
  EmbeddedTicketClassWSModel embedded = null;
/* Contains the linked resources: first,previous,next,last */
  Object links = null;

  CollectionProperties pagination = null;

  TicketClassCollectionWSModel();

  @override
  String toString() {
    return 'TicketClassCollectionWSModel[embedded=$embedded, links=$links, pagination=$pagination, ]';
  }

  TicketClassCollectionWSModel.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    embedded = new EmbeddedTicketClassWSModel.fromJson(json['_embedded']);
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

  static List<TicketClassCollectionWSModel> listFromJson(List<dynamic> json) {
    return json == null ? new List<TicketClassCollectionWSModel>() : json.map((value) => new TicketClassCollectionWSModel.fromJson(value)).toList();
  }

  static Map<String, TicketClassCollectionWSModel> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, TicketClassCollectionWSModel>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new TicketClassCollectionWSModel.fromJson(value));
    }
    return map;
  }
}
