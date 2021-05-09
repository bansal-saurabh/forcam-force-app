part of swagger.api;

class OperationScheduledDates {
  /* HAL embedded objects */
  Object embedded = null;
/* HAL link objects */
  Object links = null;

  OperationScheduledDatesProperties properties = null;

  OperationScheduledDates();

  @override
  String toString() {
    return 'OperationScheduledDates[embedded=$embedded, links=$links, properties=$properties, ]';
  }

  OperationScheduledDates.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    embedded = new Object.fromJson(json['_embedded']);
    links = new Object.fromJson(json['_links']);
    properties = new OperationScheduledDatesProperties.fromJson(json['properties']);
  }

  Map<String, dynamic> toJson() {
    return {
      '_embedded': embedded,
      '_links': links,
      'properties': properties
     };
  }

  static List<OperationScheduledDates> listFromJson(List<dynamic> json) {
    return json == null ? new List<OperationScheduledDates>() : json.map((value) => new OperationScheduledDates.fromJson(value)).toList();
  }

  static Map<String, OperationScheduledDates> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, OperationScheduledDates>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new OperationScheduledDates.fromJson(value));
    }
    return map;
  }
}
