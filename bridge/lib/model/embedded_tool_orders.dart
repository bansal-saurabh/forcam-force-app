part of swagger.api;

class EmbeddedToolOrders {
  /* The tool orders */
  List<ToolAssemblyOrder> toolOrders = [];

  EmbeddedToolOrders();

  @override
  String toString() {
    return 'EmbeddedToolOrders[toolOrders=$toolOrders, ]';
  }

  EmbeddedToolOrders.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    toolOrders = ToolAssemblyOrder.listFromJson(json['toolOrders']);
  }

  Map<String, dynamic> toJson() {
    return {
      'toolOrders': toolOrders
     };
  }

  static List<EmbeddedToolOrders> listFromJson(List<dynamic> json) {
    return json == null ? new List<EmbeddedToolOrders>() : json.map((value) => new EmbeddedToolOrders.fromJson(value)).toList();
  }

  static Map<String, EmbeddedToolOrders> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, EmbeddedToolOrders>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new EmbeddedToolOrders.fromJson(value));
    }
    return map;
  }
}
