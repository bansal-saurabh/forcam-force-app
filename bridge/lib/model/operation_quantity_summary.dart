part of swagger.api;

class OperationQuantitySummary {
  /* HAL embedded objects */
  Object embedded = null;
/* Contains the linked resources: first,previous,next,last */
  Object links = null;

  CollectionProperties pagination = null;

  OperationQuantitySummaryProperties properties = null;

  OperationQuantitySummary();

  @override
  String toString() {
    return 'OperationQuantitySummary[embedded=$embedded, links=$links, pagination=$pagination, properties=$properties, ]';
  }

  OperationQuantitySummary.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    embedded = new Object.fromJson(json['_embedded']);
    links = new Object.fromJson(json['_links']);
    pagination = new CollectionProperties.fromJson(json['pagination']);
    properties = new OperationQuantitySummaryProperties.fromJson(json['properties']);
  }

  Map<String, dynamic> toJson() {
    return {
      '_embedded': embedded,
      '_links': links,
      'pagination': pagination,
      'properties': properties
     };
  }

  static List<OperationQuantitySummary> listFromJson(List<dynamic> json) {
    return json == null ? new List<OperationQuantitySummary>() : json.map((value) => new OperationQuantitySummary.fromJson(value)).toList();
  }

  static Map<String, OperationQuantitySummary> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, OperationQuantitySummary>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new OperationQuantitySummary.fromJson(value));
    }
    return map;
  }
}
