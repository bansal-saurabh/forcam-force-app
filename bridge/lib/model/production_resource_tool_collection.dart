part of swagger.api;

class ProductionResourceToolCollection {
  
  EmbeddedProductionResourcesAndTools embedded = null;
/* Contains the linked resources: first,previous,next,last */
  Object links = null;

  CollectionProperties pagination = null;

  ProductionResourceToolCollection();

  @override
  String toString() {
    return 'ProductionResourceToolCollection[embedded=$embedded, links=$links, pagination=$pagination, ]';
  }

  ProductionResourceToolCollection.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    embedded = new EmbeddedProductionResourcesAndTools.fromJson(json['_embedded']);
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

  static List<ProductionResourceToolCollection> listFromJson(List<dynamic> json) {
    return json == null ? new List<ProductionResourceToolCollection>() : json.map((value) => new ProductionResourceToolCollection.fromJson(value)).toList();
  }

  static Map<String, ProductionResourceToolCollection> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ProductionResourceToolCollection>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ProductionResourceToolCollection.fromJson(value));
    }
    return map;
  }
}
