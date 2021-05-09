part of swagger.api;

class ScheduledOperatingTimes {
  /* HAL embedded objects */
  Object embedded = null;
/* Contains the linked resources: first,previous,next,last */
  Object links = null;

  CollectionProperties pagination = null;

  WorkplaceScheduledOperatingTimesPropertiesWSModel properties = null;

  ScheduledOperatingTimes();

  @override
  String toString() {
    return 'ScheduledOperatingTimes[embedded=$embedded, links=$links, pagination=$pagination, properties=$properties, ]';
  }

  ScheduledOperatingTimes.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    embedded = new Object.fromJson(json['_embedded']);
    links = new Object.fromJson(json['_links']);
    pagination = new CollectionProperties.fromJson(json['pagination']);
    properties = new WorkplaceScheduledOperatingTimesPropertiesWSModel.fromJson(json['properties']);
  }

  Map<String, dynamic> toJson() {
    return {
      '_embedded': embedded,
      '_links': links,
      'pagination': pagination,
      'properties': properties
     };
  }

  static List<ScheduledOperatingTimes> listFromJson(List<dynamic> json) {
    return json == null ? new List<ScheduledOperatingTimes>() : json.map((value) => new ScheduledOperatingTimes.fromJson(value)).toList();
  }

  static Map<String, ScheduledOperatingTimes> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ScheduledOperatingTimes>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ScheduledOperatingTimes.fromJson(value));
    }
    return map;
  }
}
