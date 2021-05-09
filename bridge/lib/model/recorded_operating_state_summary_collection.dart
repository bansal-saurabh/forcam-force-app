part of swagger.api;

class RecordedOperatingStateSummaryCollection {
  /* HAL embedded objects */
  Object embedded = null;
/* Contains the linked resources: first,previous,next,last */
  Object links = null;

  CollectionProperties pagination = null;

  OperatingStateSummaryPropertiesWSModel properties = null;

  RecordedOperatingStateSummaryCollection();

  @override
  String toString() {
    return 'RecordedOperatingStateSummaryCollection[embedded=$embedded, links=$links, pagination=$pagination, properties=$properties, ]';
  }

  RecordedOperatingStateSummaryCollection.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    embedded = new Object.fromJson(json['_embedded']);
    links = new Object.fromJson(json['_links']);
    pagination = new CollectionProperties.fromJson(json['pagination']);
    properties = new OperatingStateSummaryPropertiesWSModel.fromJson(json['properties']);
  }

  Map<String, dynamic> toJson() {
    return {
      '_embedded': embedded,
      '_links': links,
      'pagination': pagination,
      'properties': properties
     };
  }

  static List<RecordedOperatingStateSummaryCollection> listFromJson(List<dynamic> json) {
    return json == null ? new List<RecordedOperatingStateSummaryCollection>() : json.map((value) => new RecordedOperatingStateSummaryCollection.fromJson(value)).toList();
  }

  static Map<String, RecordedOperatingStateSummaryCollection> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, RecordedOperatingStateSummaryCollection>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new RecordedOperatingStateSummaryCollection.fromJson(value));
    }
    return map;
  }
}
