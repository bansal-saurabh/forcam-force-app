part of swagger.api;

class ScheduledMaintenanceTimes {
  /* HAL embedded objects */
  Object embedded = null;
/* Contains the linked resources: first,previous,next,last */
  Object links = null;

  CollectionProperties pagination = null;

  WorkplaceScheduledMaintenanceTimesPropertiesWSModel properties = null;

  ScheduledMaintenanceTimes();

  @override
  String toString() {
    return 'ScheduledMaintenanceTimes[embedded=$embedded, links=$links, pagination=$pagination, properties=$properties, ]';
  }

  ScheduledMaintenanceTimes.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    embedded = new Object.fromJson(json['_embedded']);
    links = new Object.fromJson(json['_links']);
    pagination = new CollectionProperties.fromJson(json['pagination']);
    properties = new WorkplaceScheduledMaintenanceTimesPropertiesWSModel.fromJson(json['properties']);
  }

  Map<String, dynamic> toJson() {
    return {
      '_embedded': embedded,
      '_links': links,
      'pagination': pagination,
      'properties': properties
     };
  }

  static List<ScheduledMaintenanceTimes> listFromJson(List<dynamic> json) {
    return json == null ? new List<ScheduledMaintenanceTimes>() : json.map((value) => new ScheduledMaintenanceTimes.fromJson(value)).toList();
  }

  static Map<String, ScheduledMaintenanceTimes> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ScheduledMaintenanceTimes>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ScheduledMaintenanceTimes.fromJson(value));
    }
    return map;
  }
}
