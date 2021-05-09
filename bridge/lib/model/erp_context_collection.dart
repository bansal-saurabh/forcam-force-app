part of swagger.api;

class ErpContextCollection {
  
  EmbeddedErpContexts embedded = null;
/* Contains the linked resources: first,previous,next,last */
  Object links = null;

  CollectionProperties pagination = null;

  ErpContextCollection();

  @override
  String toString() {
    return 'ErpContextCollection[embedded=$embedded, links=$links, pagination=$pagination, ]';
  }

  ErpContextCollection.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    embedded = new EmbeddedErpContexts.fromJson(json['_embedded']);
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

  static List<ErpContextCollection> listFromJson(List<dynamic> json) {
    return json == null ? new List<ErpContextCollection>() : json.map((value) => new ErpContextCollection.fromJson(value)).toList();
  }

  static Map<String, ErpContextCollection> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ErpContextCollection>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ErpContextCollection.fromJson(value));
    }
    return map;
  }
}
