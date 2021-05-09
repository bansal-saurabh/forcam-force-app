part of swagger.api;

class OperationCollection {
  
  EmbeddedOperations embedded = null;
/* Contains the linked resources: first,previous,next,last */
  Object links = null;

  CollectionProperties pagination = null;

  OperationCollection();

  @override
  String toString() {
    return 'OperationCollection[embedded=$embedded, links=$links, pagination=$pagination, ]';
  }

  OperationCollection.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    embedded = new EmbeddedOperations.fromJson(json['_embedded']);
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

  static List<OperationCollection> listFromJson(List<dynamic> json) {
    return json == null ? new List<OperationCollection>() : json.map((value) => new OperationCollection.fromJson(value)).toList();
  }

  static Map<String, OperationCollection> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, OperationCollection>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new OperationCollection.fromJson(value));
    }
    return map;
  }
}
