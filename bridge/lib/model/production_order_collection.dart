part of swagger.api;

class ProductionOrderCollection {
  
  EmbeddedProductionOrders embedded = null;
/* Contains the linked resources: first,previous,next,last */
  Object links = null;

  CollectionProperties pagination = null;

  ProductionOrderCollection();

  @override
  String toString() {
    return 'ProductionOrderCollection[embedded=$embedded, links=$links, pagination=$pagination, ]';
  }

  ProductionOrderCollection.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    embedded = new EmbeddedProductionOrders.fromJson(json['_embedded']);
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

  static List<ProductionOrderCollection> listFromJson(List<dynamic> json) {
    return json == null ? new List<ProductionOrderCollection>() : json.map((value) => new ProductionOrderCollection.fromJson(value)).toList();
  }

  static Map<String, ProductionOrderCollection> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ProductionOrderCollection>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ProductionOrderCollection.fromJson(value));
    }
    return map;
  }
}
