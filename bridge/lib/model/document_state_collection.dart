part of swagger.api;

class DocumentStateCollection {
  
  EmbeddedDocumentStates embedded = null;
/* Contains the linked resources: first,previous,next,last */
  Object links = null;

  CollectionProperties pagination = null;

  DocumentStateCollection();

  @override
  String toString() {
    return 'DocumentStateCollection[embedded=$embedded, links=$links, pagination=$pagination, ]';
  }

  DocumentStateCollection.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    embedded = new EmbeddedDocumentStates.fromJson(json['_embedded']);
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

  static List<DocumentStateCollection> listFromJson(List<dynamic> json) {
    return json == null ? new List<DocumentStateCollection>() : json.map((value) => new DocumentStateCollection.fromJson(value)).toList();
  }

  static Map<String, DocumentStateCollection> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, DocumentStateCollection>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new DocumentStateCollection.fromJson(value));
    }
    return map;
  }
}
