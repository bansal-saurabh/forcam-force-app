part of swagger.api;

class OperationComponentCollection {
  /* HAL embedded objects */
  Object embedded = null;
/* Contains the linked resources: first,previous,next,last */
  Object links = null;

  CollectionProperties pagination = null;

  OperationComponentCollectionProperties properties = null;

  OperationComponentCollection();

  @override
  String toString() {
    return 'OperationComponentCollection[embedded=$embedded, links=$links, pagination=$pagination, properties=$properties, ]';
  }

  OperationComponentCollection.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    embedded = new Object.fromJson(json['_embedded']);
    links = new Object.fromJson(json['_links']);
    pagination = new CollectionProperties.fromJson(json['pagination']);
    properties = new OperationComponentCollectionProperties.fromJson(json['properties']);
  }

  Map<String, dynamic> toJson() {
    return {
      '_embedded': embedded,
      '_links': links,
      'pagination': pagination,
      'properties': properties
     };
  }

  static List<OperationComponentCollection> listFromJson(List<dynamic> json) {
    return json == null ? new List<OperationComponentCollection>() : json.map((value) => new OperationComponentCollection.fromJson(value)).toList();
  }

  static Map<String, OperationComponentCollection> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, OperationComponentCollection>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new OperationComponentCollection.fromJson(value));
    }
    return map;
  }
}
