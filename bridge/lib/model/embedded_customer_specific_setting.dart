part of swagger.api;

class EmbeddedCustomerSpecificSetting {
  /* The customer specific settings */
  List<CustomerSpecificSetting> customerSpecificSettings = [];

  EmbeddedCustomerSpecificSetting();

  @override
  String toString() {
    return 'EmbeddedCustomerSpecificSetting[customerSpecificSettings=$customerSpecificSettings, ]';
  }

  EmbeddedCustomerSpecificSetting.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    customerSpecificSettings = CustomerSpecificSetting.listFromJson(json['customerSpecificSettings']);
  }

  Map<String, dynamic> toJson() {
    return {
      'customerSpecificSettings': customerSpecificSettings
     };
  }

  static List<EmbeddedCustomerSpecificSetting> listFromJson(List<dynamic> json) {
    return json == null ? new List<EmbeddedCustomerSpecificSetting>() : json.map((value) => new EmbeddedCustomerSpecificSetting.fromJson(value)).toList();
  }

  static Map<String, EmbeddedCustomerSpecificSetting> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, EmbeddedCustomerSpecificSetting>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new EmbeddedCustomerSpecificSetting.fromJson(value));
    }
    return map;
  }
}
