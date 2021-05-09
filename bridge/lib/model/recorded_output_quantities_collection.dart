part of swagger.api;

class RecordedOutputQuantitiesCollection {
  /* HAL embedded objects */
  Object embedded = null;
/* Contains the linked resources: first,previous,next,last */
  Object links = null;

  CollectionProperties pagination = null;

  RecordedOperationOutputQuantitiesProperties properties = null;

  RecordedOutputQuantitiesCollection();

  @override
  String toString() {
    return 'RecordedOutputQuantitiesCollection[embedded=$embedded, links=$links, pagination=$pagination, properties=$properties, ]';
  }

  RecordedOutputQuantitiesCollection.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    embedded = new Object.fromJson(json['_embedded']);
    links = new Object.fromJson(json['_links']);
    pagination = new CollectionProperties.fromJson(json['pagination']);
    properties = new RecordedOperationOutputQuantitiesProperties.fromJson(json['properties']);
  }

  Map<String, dynamic> toJson() {
    return {
      '_embedded': embedded,
      '_links': links,
      'pagination': pagination,
      'properties': properties
     };
  }

  static List<RecordedOutputQuantitiesCollection> listFromJson(List<dynamic> json) {
    return json == null ? new List<RecordedOutputQuantitiesCollection>() : json.map((value) => new RecordedOutputQuantitiesCollection.fromJson(value)).toList();
  }

  static Map<String, RecordedOutputQuantitiesCollection> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, RecordedOutputQuantitiesCollection>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new RecordedOutputQuantitiesCollection.fromJson(value));
    }
    return map;
  }
}
