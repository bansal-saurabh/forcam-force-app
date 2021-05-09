part of swagger.api;

class RecordedOperationPhaseCollection {
  /* HAL embedded objects */
  Object embedded = null;
/* Contains the linked resources: first,previous,next,last */
  Object links = null;

  CollectionProperties pagination = null;

  OperationPhaseCollectionProperties properties = null;

  RecordedOperationPhaseCollection();

  @override
  String toString() {
    return 'RecordedOperationPhaseCollection[embedded=$embedded, links=$links, pagination=$pagination, properties=$properties, ]';
  }

  RecordedOperationPhaseCollection.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    embedded = new Object.fromJson(json['_embedded']);
    links = new Object.fromJson(json['_links']);
    pagination = new CollectionProperties.fromJson(json['pagination']);
    properties = new OperationPhaseCollectionProperties.fromJson(json['properties']);
  }

  Map<String, dynamic> toJson() {
    return {
      '_embedded': embedded,
      '_links': links,
      'pagination': pagination,
      'properties': properties
     };
  }

  static List<RecordedOperationPhaseCollection> listFromJson(List<dynamic> json) {
    return json == null ? new List<RecordedOperationPhaseCollection>() : json.map((value) => new RecordedOperationPhaseCollection.fromJson(value)).toList();
  }

  static Map<String, RecordedOperationPhaseCollection> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, RecordedOperationPhaseCollection>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new RecordedOperationPhaseCollection.fromJson(value));
    }
    return map;
  }
}
