part of swagger.api;

class ToolAssemblyOrder {
  /* HAL embedded objects */
  Object embedded = null;
/* HAL link objects */
  Object links = null;

  ToolAssemblyOrderProperties properties = null;

  ToolAssemblyOrder();

  @override
  String toString() {
    return 'ToolAssemblyOrder[embedded=$embedded, links=$links, properties=$properties, ]';
  }

  ToolAssemblyOrder.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    embedded = new Object.fromJson(json['_embedded']);
    links = new Object.fromJson(json['_links']);
    properties = new ToolAssemblyOrderProperties.fromJson(json['properties']);
  }

  Map<String, dynamic> toJson() {
    return {
      '_embedded': embedded,
      '_links': links,
      'properties': properties
     };
  }

  static List<ToolAssemblyOrder> listFromJson(List<dynamic> json) {
    return json == null ? new List<ToolAssemblyOrder>() : json.map((value) => new ToolAssemblyOrder.fromJson(value)).toList();
  }

  static Map<String, ToolAssemblyOrder> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ToolAssemblyOrder>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ToolAssemblyOrder.fromJson(value));
    }
    return map;
  }
}
