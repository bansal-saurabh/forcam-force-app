part of swagger.api;

class ProductionOrder {
  /* HAL embedded objects */
  Object embedded = null;
/* HAL link objects */
  Object links = null;

  ProductionOrderProperties properties = null;

  ProductionOrder();

  @override
  String toString() {
    return 'ProductionOrder[embedded=$embedded, links=$links, properties=$properties, ]';
  }

  ProductionOrder.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    embedded = new Object.fromJson(json['_embedded']);
    links = new Object.fromJson(json['_links']);
    properties = new ProductionOrderProperties.fromJson(json['properties']);
  }

  Map<String, dynamic> toJson() {
    return {
      '_embedded': embedded,
      '_links': links,
      'properties': properties
     };
  }

  static List<ProductionOrder> listFromJson(List<dynamic> json) {
    return json == null ? new List<ProductionOrder>() : json.map((value) => new ProductionOrder.fromJson(value)).toList();
  }

  static Map<String, ProductionOrder> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ProductionOrder>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ProductionOrder.fromJson(value));
    }
    return map;
  }
}
