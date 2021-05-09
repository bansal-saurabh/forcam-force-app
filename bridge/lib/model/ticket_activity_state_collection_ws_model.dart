part of swagger.api;

class TicketActivityStateCollectionWSModel {
  
  EmbeddedTicketActivityStateWSModel embedded = null;
/* Contains the linked resources: first,previous,next,last */
  Object links = null;

  CollectionProperties pagination = null;

  TicketActivityStateCollectionWSModel();

  @override
  String toString() {
    return 'TicketActivityStateCollectionWSModel[embedded=$embedded, links=$links, pagination=$pagination, ]';
  }

  TicketActivityStateCollectionWSModel.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    embedded = new EmbeddedTicketActivityStateWSModel.fromJson(json['_embedded']);
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

  static List<TicketActivityStateCollectionWSModel> listFromJson(List<dynamic> json) {
    return json == null ? new List<TicketActivityStateCollectionWSModel>() : json.map((value) => new TicketActivityStateCollectionWSModel.fromJson(value)).toList();
  }

  static Map<String, TicketActivityStateCollectionWSModel> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, TicketActivityStateCollectionWSModel>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new TicketActivityStateCollectionWSModel.fromJson(value));
    }
    return map;
  }
}
