part of swagger.api;

class WorkplaceRecordedOperationPhaseCollection {
  /* HAL embedded objects */
  Object embedded = null;
/* Contains the linked resources: first,previous,next,last */
  Object links = null;

  CollectionProperties pagination = null;

  WpOperationPhaseCollectionProperties properties = null;

  WorkplaceRecordedOperationPhaseCollection();

  @override
  String toString() {
    return 'WorkplaceRecordedOperationPhaseCollection[embedded=$embedded, links=$links, pagination=$pagination, properties=$properties, ]';
  }

  WorkplaceRecordedOperationPhaseCollection.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    embedded = new Object.fromJson(json['_embedded']);
    links = new Object.fromJson(json['_links']);
    pagination = new CollectionProperties.fromJson(json['pagination']);
    properties = new WpOperationPhaseCollectionProperties.fromJson(json['properties']);
  }

  Map<String, dynamic> toJson() {
    return {
      '_embedded': embedded,
      '_links': links,
      'pagination': pagination,
      'properties': properties
     };
  }

  static List<WorkplaceRecordedOperationPhaseCollection> listFromJson(List<dynamic> json) {
    return json == null ? new List<WorkplaceRecordedOperationPhaseCollection>() : json.map((value) => new WorkplaceRecordedOperationPhaseCollection.fromJson(value)).toList();
  }

  static Map<String, WorkplaceRecordedOperationPhaseCollection> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, WorkplaceRecordedOperationPhaseCollection>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new WorkplaceRecordedOperationPhaseCollection.fromJson(value));
    }
    return map;
  }
}
