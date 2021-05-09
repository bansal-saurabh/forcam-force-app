part of swagger.api;

class ProductionOrderOperationSequenceProperties {
  
  List<ProductionOrderOperationSequence> elements = [];

  ProductionOrderOperationSequenceProperties();

  @override
  String toString() {
    return 'ProductionOrderOperationSequenceProperties[elements=$elements, ]';
  }

  ProductionOrderOperationSequenceProperties.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    elements = ProductionOrderOperationSequence.listFromJson(json['elements']);
  }

  Map<String, dynamic> toJson() {
    return {
      'elements': elements
     };
  }

  static List<ProductionOrderOperationSequenceProperties> listFromJson(List<dynamic> json) {
    return json == null ? new List<ProductionOrderOperationSequenceProperties>() : json.map((value) => new ProductionOrderOperationSequenceProperties.fromJson(value)).toList();
  }

  static Map<String, ProductionOrderOperationSequenceProperties> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ProductionOrderOperationSequenceProperties>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ProductionOrderOperationSequenceProperties.fromJson(value));
    }
    return map;
  }
}
