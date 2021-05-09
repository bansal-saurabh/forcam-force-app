part of swagger.api;

class TicketStateCollectionWSModel {
  
  EmbeddedTicketStateWSModel embedded = null;
/* Contains the linked resources: first,previous,next,last */
  Object links = null;

  CollectionProperties pagination = null;

  TicketStateCollectionWSModel();

  @override
  String toString() {
    return 'TicketStateCollectionWSModel[embedded=$embedded, links=$links, pagination=$pagination, ]';
  }

  TicketStateCollectionWSModel.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    embedded = new EmbeddedTicketStateWSModel.fromJson(json['_embedded']);
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

  static List<TicketStateCollectionWSModel> listFromJson(List<dynamic> json) {
    return json == null ? new List<TicketStateCollectionWSModel>() : json.map((value) => new TicketStateCollectionWSModel.fromJson(value)).toList();
  }

  static Map<String, TicketStateCollectionWSModel> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, TicketStateCollectionWSModel>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new TicketStateCollectionWSModel.fromJson(value));
    }
    return map;
  }
}
