part of swagger.api;

class DeviceRecordedTimeSeriesCollection {
  /* HAL embedded objects */
  Object embedded = null;
/* Contains the linked resources: first,previous,next,last */
  Object links = null;

  CollectionProperties pagination = null;

  DeviceRecordedTimeSeriesCollectionProperties properties = null;

  DeviceRecordedTimeSeriesCollection();

  @override
  String toString() {
    return 'DeviceRecordedTimeSeriesCollection[embedded=$embedded, links=$links, pagination=$pagination, properties=$properties, ]';
  }

  DeviceRecordedTimeSeriesCollection.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    embedded = new Object.fromJson(json['_embedded']);
    links = new Object.fromJson(json['_links']);
    pagination = new CollectionProperties.fromJson(json['pagination']);
    properties = new DeviceRecordedTimeSeriesCollectionProperties.fromJson(json['properties']);
  }

  Map<String, dynamic> toJson() {
    return {
      '_embedded': embedded,
      '_links': links,
      'pagination': pagination,
      'properties': properties
     };
  }

  static List<DeviceRecordedTimeSeriesCollection> listFromJson(List<dynamic> json) {
    return json == null ? new List<DeviceRecordedTimeSeriesCollection>() : json.map((value) => new DeviceRecordedTimeSeriesCollection.fromJson(value)).toList();
  }

  static Map<String, DeviceRecordedTimeSeriesCollection> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, DeviceRecordedTimeSeriesCollection>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new DeviceRecordedTimeSeriesCollection.fromJson(value));
    }
    return map;
  }
}
