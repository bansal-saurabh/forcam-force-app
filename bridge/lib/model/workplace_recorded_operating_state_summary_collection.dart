part of swagger.api;

class WorkplaceRecordedOperatingStateSummaryCollection {
  /* HAL embedded objects */
  Object embedded = null;
/* Contains the linked resources: first,previous,next,last */
  Object links = null;

  CollectionProperties pagination = null;

  WpOperatingStateSummaryPropertiesWSModel properties = null;

  WorkplaceRecordedOperatingStateSummaryCollection();

  @override
  String toString() {
    return 'WorkplaceRecordedOperatingStateSummaryCollection[embedded=$embedded, links=$links, pagination=$pagination, properties=$properties, ]';
  }

  WorkplaceRecordedOperatingStateSummaryCollection.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    embedded = new Object.fromJson(json['_embedded']);
    links = new Object.fromJson(json['_links']);
    pagination = new CollectionProperties.fromJson(json['pagination']);
    properties = new WpOperatingStateSummaryPropertiesWSModel.fromJson(json['properties']);
  }

  Map<String, dynamic> toJson() {
    return {
      '_embedded': embedded,
      '_links': links,
      'pagination': pagination,
      'properties': properties
     };
  }

  static List<WorkplaceRecordedOperatingStateSummaryCollection> listFromJson(List<dynamic> json) {
    return json == null ? new List<WorkplaceRecordedOperatingStateSummaryCollection>() : json.map((value) => new WorkplaceRecordedOperatingStateSummaryCollection.fromJson(value)).toList();
  }

  static Map<String, WorkplaceRecordedOperatingStateSummaryCollection> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, WorkplaceRecordedOperatingStateSummaryCollection>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new WorkplaceRecordedOperatingStateSummaryCollection.fromJson(value));
    }
    return map;
  }
}
