part of swagger.api;

class WorkplaceQuantitySummary {
  /* HAL embedded objects */
  Object embedded = null;
/* Contains the linked resources: first,previous,next,last */
  Object links = null;

  CollectionProperties pagination = null;

  WorkplaceQuantitySummaryCollectionProperties properties = null;

  WorkplaceQuantitySummary();

  @override
  String toString() {
    return 'WorkplaceQuantitySummary[embedded=$embedded, links=$links, pagination=$pagination, properties=$properties, ]';
  }

  WorkplaceQuantitySummary.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    embedded = new Object.fromJson(json['_embedded']);
    links = new Object.fromJson(json['_links']);
    pagination = new CollectionProperties.fromJson(json['pagination']);
    properties = new WorkplaceQuantitySummaryCollectionProperties.fromJson(json['properties']);
  }

  Map<String, dynamic> toJson() {
    return {
      '_embedded': embedded,
      '_links': links,
      'pagination': pagination,
      'properties': properties
     };
  }

  static List<WorkplaceQuantitySummary> listFromJson(List<dynamic> json) {
    return json == null ? new List<WorkplaceQuantitySummary>() : json.map((value) => new WorkplaceQuantitySummary.fromJson(value)).toList();
  }

  static Map<String, WorkplaceQuantitySummary> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, WorkplaceQuantitySummary>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new WorkplaceQuantitySummary.fromJson(value));
    }
    return map;
  }
}
