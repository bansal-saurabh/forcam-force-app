part of swagger.api;

class ProductionOrderOperationSequenceCollection {
  /* HAL embedded objects */
  Object embedded = null;
/* Contains the linked resources: first,previous,next,last */
  Object links = null;

  CollectionProperties pagination = null;

  ProductionOrderOperationSequenceProperties properties = null;

  ProductionOrderOperationSequenceCollection();

  @override
  String toString() {
    return 'ProductionOrderOperationSequenceCollection[embedded=$embedded, links=$links, pagination=$pagination, properties=$properties, ]';
  }

  ProductionOrderOperationSequenceCollection.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    embedded = new Object.fromJson(json['_embedded']);
    links = new Object.fromJson(json['_links']);
    pagination = new CollectionProperties.fromJson(json['pagination']);
    properties = new ProductionOrderOperationSequenceProperties.fromJson(json['properties']);
  }

  Map<String, dynamic> toJson() {
    return {
      '_embedded': embedded,
      '_links': links,
      'pagination': pagination,
      'properties': properties
     };
  }

  static List<ProductionOrderOperationSequenceCollection> listFromJson(List<dynamic> json) {
    return json == null ? new List<ProductionOrderOperationSequenceCollection>() : json.map((value) => new ProductionOrderOperationSequenceCollection.fromJson(value)).toList();
  }

  static Map<String, ProductionOrderOperationSequenceCollection> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ProductionOrderOperationSequenceCollection>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ProductionOrderOperationSequenceCollection.fromJson(value));
    }
    return map;
  }
}
