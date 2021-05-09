part of swagger.api;

class ProductionOrderSchedulingResultCollection {
  /* HAL embedded objects */
  Object embedded = null;
/* Contains the linked resources: first,previous,next,last */
  Object links = null;

  CollectionProperties pagination = null;

  ProductionOrderSchedulingResultPropertiesWSModel properties = null;

  ProductionOrderSchedulingResultCollection();

  @override
  String toString() {
    return 'ProductionOrderSchedulingResultCollection[embedded=$embedded, links=$links, pagination=$pagination, properties=$properties, ]';
  }

  ProductionOrderSchedulingResultCollection.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    embedded = new Object.fromJson(json['_embedded']);
    links = new Object.fromJson(json['_links']);
    pagination = new CollectionProperties.fromJson(json['pagination']);
    properties = new ProductionOrderSchedulingResultPropertiesWSModel.fromJson(json['properties']);
  }

  Map<String, dynamic> toJson() {
    return {
      '_embedded': embedded,
      '_links': links,
      'pagination': pagination,
      'properties': properties
     };
  }

  static List<ProductionOrderSchedulingResultCollection> listFromJson(List<dynamic> json) {
    return json == null ? new List<ProductionOrderSchedulingResultCollection>() : json.map((value) => new ProductionOrderSchedulingResultCollection.fromJson(value)).toList();
  }

  static Map<String, ProductionOrderSchedulingResultCollection> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ProductionOrderSchedulingResultCollection>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ProductionOrderSchedulingResultCollection.fromJson(value));
    }
    return map;
  }
}
