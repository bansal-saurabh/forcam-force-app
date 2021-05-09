part of swagger.api;

class DeviceCollection {
  
  EmbeddedDevices embedded = null;
/* Contains the linked resources: first,previous,next,last */
  Object links = null;

  CollectionProperties pagination = null;

  DeviceCollection();

  @override
  String toString() {
    return 'DeviceCollection[embedded=$embedded, links=$links, pagination=$pagination, ]';
  }

  DeviceCollection.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    embedded = new EmbeddedDevices.fromJson(json['_embedded']);
    links = new Object.fromJson(json['_links']);
    pagination = new CollectionProperties.fromJson(json['pagination']);
  }

  Map<String, dynamic> toJson() {
    return {
      '_embedded': embedded,
      '_links': links,
      'pagination': pagination
     };
  }

  static List<DeviceCollection> listFromJson(List<dynamic> json) {
    return json == null ? new List<DeviceCollection>() : json.map((value) => new DeviceCollection.fromJson(value)).toList();
  }

  static Map<String, DeviceCollection> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, DeviceCollection>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new DeviceCollection.fromJson(value));
    }
    return map;
  }
}
