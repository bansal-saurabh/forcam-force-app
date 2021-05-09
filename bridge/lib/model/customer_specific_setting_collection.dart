part of swagger.api;

class CustomerSpecificSettingCollection {
  
  EmbeddedCustomerSpecificSetting embedded = null;
/* Contains the linked resources: first,previous,next,last */
  Object links = null;

  CollectionProperties pagination = null;

  CustomerSpecificSettingCollection();

  @override
  String toString() {
    return 'CustomerSpecificSettingCollection[embedded=$embedded, links=$links, pagination=$pagination, ]';
  }

  CustomerSpecificSettingCollection.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    embedded = new EmbeddedCustomerSpecificSetting.fromJson(json['_embedded']);
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

  static List<CustomerSpecificSettingCollection> listFromJson(List<dynamic> json) {
    return json == null ? new List<CustomerSpecificSettingCollection>() : json.map((value) => new CustomerSpecificSettingCollection.fromJson(value)).toList();
  }

  static Map<String, CustomerSpecificSettingCollection> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, CustomerSpecificSettingCollection>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new CustomerSpecificSettingCollection.fromJson(value));
    }
    return map;
  }
}
