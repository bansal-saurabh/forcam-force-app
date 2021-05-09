part of swagger.api;

class ProductionResourceTool {
  /* HAL embedded objects */
  Object embedded = null;
/* Contains the linked resources: description, quantityUnit */
  Object links = null;

  ProductionResourceToolProperties properties = null;

  ProductionResourceTool();

  @override
  String toString() {
    return 'ProductionResourceTool[embedded=$embedded, links=$links, properties=$properties, ]';
  }

  ProductionResourceTool.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    embedded = new Object.fromJson(json['_embedded']);
    links = new Object.fromJson(json['_links']);
    properties = new ProductionResourceToolProperties.fromJson(json['properties']);
  }

  Map<String, dynamic> toJson() {
    return {
      '_embedded': embedded,
      '_links': links,
      'properties': properties
     };
  }

  static List<ProductionResourceTool> listFromJson(List<dynamic> json) {
    return json == null ? new List<ProductionResourceTool>() : json.map((value) => new ProductionResourceTool.fromJson(value)).toList();
  }

  static Map<String, ProductionResourceTool> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ProductionResourceTool>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ProductionResourceTool.fromJson(value));
    }
    return map;
  }
}
