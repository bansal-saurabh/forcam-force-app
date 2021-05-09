part of swagger.api;

class EmbeddedProductionOrders {
  /* Array of production orders */
  List<ProductionOrder> orders = [];

  EmbeddedProductionOrders();

  @override
  String toString() {
    return 'EmbeddedProductionOrders[orders=$orders, ]';
  }

  EmbeddedProductionOrders.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    orders = ProductionOrder.listFromJson(json['orders']);
  }

  Map<String, dynamic> toJson() {
    return {
      'orders': orders
     };
  }

  static List<EmbeddedProductionOrders> listFromJson(List<dynamic> json) {
    return json == null ? new List<EmbeddedProductionOrders>() : json.map((value) => new EmbeddedProductionOrders.fromJson(value)).toList();
  }

  static Map<String, EmbeddedProductionOrders> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, EmbeddedProductionOrders>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new EmbeddedProductionOrders.fromJson(value));
    }
    return map;
  }
}
