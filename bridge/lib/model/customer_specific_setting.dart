part of swagger.api;

class CustomerSpecificSetting {
  /* HAL embedded objects */
  Object embedded = null;
/* HAL link objects */
  Object links = null;

  CustomerSpecificSettingProperties properties = null;

  CustomerSpecificSetting();

  @override
  String toString() {
    return 'CustomerSpecificSetting[embedded=$embedded, links=$links, properties=$properties, ]';
  }

  CustomerSpecificSetting.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    embedded = new Object.fromJson(json['_embedded']);
    links = new Object.fromJson(json['_links']);
    properties = new CustomerSpecificSettingProperties.fromJson(json['properties']);
  }

  Map<String, dynamic> toJson() {
    return {
      '_embedded': embedded,
      '_links': links,
      'properties': properties
     };
  }

  static List<CustomerSpecificSetting> listFromJson(List<dynamic> json) {
    return json == null ? new List<CustomerSpecificSetting>() : json.map((value) => new CustomerSpecificSetting.fromJson(value)).toList();
  }

  static Map<String, CustomerSpecificSetting> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, CustomerSpecificSetting>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new CustomerSpecificSetting.fromJson(value));
    }
    return map;
  }
}
