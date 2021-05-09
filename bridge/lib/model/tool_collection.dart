part of swagger.api;

class ToolCollection {
  
  EmbeddedTools embedded = null;
/* Contains the linked resources: first,previous,next,last */
  Object links = null;

  CollectionProperties pagination = null;

  ToolCollection();

  @override
  String toString() {
    return 'ToolCollection[embedded=$embedded, links=$links, pagination=$pagination, ]';
  }

  ToolCollection.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    embedded = new EmbeddedTools.fromJson(json['_embedded']);
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

  static List<ToolCollection> listFromJson(List<dynamic> json) {
    return json == null ? new List<ToolCollection>() : json.map((value) => new ToolCollection.fromJson(value)).toList();
  }

  static Map<String, ToolCollection> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ToolCollection>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ToolCollection.fromJson(value));
    }
    return map;
  }
}
