part of swagger.api;

class ToolCutEdgeCollectionWSModel {
  
  EmbeddedToolEdges embedded = null;
/* Contains the linked resources: first,previous,next,last */
  Object links = null;

  CollectionProperties pagination = null;

  ToolCutEdgeCollectionWSModel();

  @override
  String toString() {
    return 'ToolCutEdgeCollectionWSModel[embedded=$embedded, links=$links, pagination=$pagination, ]';
  }

  ToolCutEdgeCollectionWSModel.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    embedded = new EmbeddedToolEdges.fromJson(json['_embedded']);
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

  static List<ToolCutEdgeCollectionWSModel> listFromJson(List<dynamic> json) {
    return json == null ? new List<ToolCutEdgeCollectionWSModel>() : json.map((value) => new ToolCutEdgeCollectionWSModel.fromJson(value)).toList();
  }

  static Map<String, ToolCutEdgeCollectionWSModel> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ToolCutEdgeCollectionWSModel>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ToolCutEdgeCollectionWSModel.fromJson(value));
    }
    return map;
  }
}
