part of swagger.api;

class ToolOrderCollectionWSModel {
  
  EmbeddedToolOrders embedded = null;
/* Contains the linked resources: first,previous,next,last */
  Object links = null;

  CollectionProperties pagination = null;

  ToolOrderCollectionWSModel();

  @override
  String toString() {
    return 'ToolOrderCollectionWSModel[embedded=$embedded, links=$links, pagination=$pagination, ]';
  }

  ToolOrderCollectionWSModel.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    embedded = new EmbeddedToolOrders.fromJson(json['_embedded']);
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

  static List<ToolOrderCollectionWSModel> listFromJson(List<dynamic> json) {
    return json == null ? new List<ToolOrderCollectionWSModel>() : json.map((value) => new ToolOrderCollectionWSModel.fromJson(value)).toList();
  }

  static Map<String, ToolOrderCollectionWSModel> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ToolOrderCollectionWSModel>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ToolOrderCollectionWSModel.fromJson(value));
    }
    return map;
  }
}
