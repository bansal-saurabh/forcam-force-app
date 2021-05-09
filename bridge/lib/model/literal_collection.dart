part of swagger.api;

class LiteralCollection {
  
  EmbeddedLiterals embedded = null;
/* Contains the linked resources: first,previous,next,last */
  Object links = null;

  CollectionProperties pagination = null;

  LiteralCollection();

  @override
  String toString() {
    return 'LiteralCollection[embedded=$embedded, links=$links, pagination=$pagination, ]';
  }

  LiteralCollection.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    embedded = new EmbeddedLiterals.fromJson(json['_embedded']);
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

  static List<LiteralCollection> listFromJson(List<dynamic> json) {
    return json == null ? new List<LiteralCollection>() : json.map((value) => new LiteralCollection.fromJson(value)).toList();
  }

  static Map<String, LiteralCollection> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, LiteralCollection>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new LiteralCollection.fromJson(value));
    }
    return map;
  }
}
