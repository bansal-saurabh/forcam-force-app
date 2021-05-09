part of swagger.api;

class EmbeddedProductionResourcesAndTools {
  /* The production resources and tools */
  List<ProductionResourceTool> productionResourcesAndTools = [];

  EmbeddedProductionResourcesAndTools();

  @override
  String toString() {
    return 'EmbeddedProductionResourcesAndTools[productionResourcesAndTools=$productionResourcesAndTools, ]';
  }

  EmbeddedProductionResourcesAndTools.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    productionResourcesAndTools = ProductionResourceTool.listFromJson(json['productionResourcesAndTools']);
  }

  Map<String, dynamic> toJson() {
    return {
      'productionResourcesAndTools': productionResourcesAndTools
     };
  }

  static List<EmbeddedProductionResourcesAndTools> listFromJson(List<dynamic> json) {
    return json == null ? new List<EmbeddedProductionResourcesAndTools>() : json.map((value) => new EmbeddedProductionResourcesAndTools.fromJson(value)).toList();
  }

  static Map<String, EmbeddedProductionResourcesAndTools> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, EmbeddedProductionResourcesAndTools>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new EmbeddedProductionResourcesAndTools.fromJson(value));
    }
    return map;
  }
}
