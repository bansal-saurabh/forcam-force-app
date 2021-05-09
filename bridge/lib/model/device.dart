part of swagger.api;

class Device {
  /* HAL embedded objects */
  Object embedded = null;
/* Contains the linked resources: description, */
  Object links = null;

  DeviceProperties properties = null;

  Device();

  @override
  String toString() {
    return 'Device[embedded=$embedded, links=$links, properties=$properties, ]';
  }

  Device.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    embedded = new Object.fromJson(json['_embedded']);
    links = new Object.fromJson(json['_links']);
    properties = new DeviceProperties.fromJson(json['properties']);
  }

  Map<String, dynamic> toJson() {
    return {
      '_embedded': embedded,
      '_links': links,
      'properties': properties
     };
  }

  static List<Device> listFromJson(List<dynamic> json) {
    return json == null ? new List<Device>() : json.map((value) => new Device.fromJson(value)).toList();
  }

  static Map<String, Device> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Device>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Device.fromJson(value));
    }
    return map;
  }
}
