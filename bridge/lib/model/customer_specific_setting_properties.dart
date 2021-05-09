part of swagger.api;

class CustomerSpecificSettingProperties {
  /* The ID of the customer specific setting */
  String id = null;
/* The topic */
  String topic = null;
/* The value */
  String value = null;
/* The description */
  String description = null;

  CustomerSpecificSettingProperties();

  @override
  String toString() {
    return 'CustomerSpecificSettingProperties[id=$id, topic=$topic, value=$value, description=$description, ]';
  }

  CustomerSpecificSettingProperties.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    topic = json['topic'];
    value = json['value'];
    description = json['description'];
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'topic': topic,
      'value': value,
      'description': description
     };
  }

  static List<CustomerSpecificSettingProperties> listFromJson(List<dynamic> json) {
    return json == null ? new List<CustomerSpecificSettingProperties>() : json.map((value) => new CustomerSpecificSettingProperties.fromJson(value)).toList();
  }

  static Map<String, CustomerSpecificSettingProperties> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, CustomerSpecificSettingProperties>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new CustomerSpecificSettingProperties.fromJson(value));
    }
    return map;
  }
}
