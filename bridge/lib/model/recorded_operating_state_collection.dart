part of swagger.api;

class RecordedOperatingStateCollection {
  /* HAL embedded objects */
  Object embedded = null;
/* Contains the linked resources: first,previous,next,last */
  Object links = null;

  CollectionProperties pagination = null;

  RecordedOperatingStatesPropertiesModel properties = null;

  RecordedOperatingStateCollection();

  @override
  String toString() {
    return 'RecordedOperatingStateCollection[embedded=$embedded, links=$links, pagination=$pagination, properties=$properties, ]';
  }

  RecordedOperatingStateCollection.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    embedded = new Object.fromJson(json['_embedded']);
    links = new Object.fromJson(json['_links']);
    pagination = new CollectionProperties.fromJson(json['pagination']);
    properties = new RecordedOperatingStatesPropertiesModel.fromJson(json['properties']);
  }

  Map<String, dynamic> toJson() {
    return {
      '_embedded': embedded,
      '_links': links,
      'pagination': pagination,
      'properties': properties
     };
  }

  static List<RecordedOperatingStateCollection> listFromJson(List<dynamic> json) {
    return json == null ? new List<RecordedOperatingStateCollection>() : json.map((value) => new RecordedOperatingStateCollection.fromJson(value)).toList();
  }

  static Map<String, RecordedOperatingStateCollection> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, RecordedOperatingStateCollection>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new RecordedOperatingStateCollection.fromJson(value));
    }
    return map;
  }
}
