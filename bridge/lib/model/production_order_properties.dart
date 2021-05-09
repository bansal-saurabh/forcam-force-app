part of swagger.api;

class ProductionOrderProperties {
  /* UUID of the production order */
  String id = null;
/* The production order number (most likely overtaken from ERP) the operation belongs to */
  String number = null;
/* The production order split */
  String split = null;
/* A description of the order */
  String description = null;

  CreateMaterialProperties material = null;
/* UUID of the ERP context in which the combination of an order number and order split is a unique identifier for a production order. In SAP ERP, for example, this context is defined by the client. Further context information is the company code and the plant */
  String erpContextId = null;

  ProductionOrderProperties();

  @override
  String toString() {
    return 'ProductionOrderProperties[id=$id, number=$number, split=$split, description=$description, material=$material, erpContextId=$erpContextId, ]';
  }

  ProductionOrderProperties.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    number = json['number'];
    split = json['split'];
    description = json['description'];
    material = new CreateMaterialProperties.fromJson(json['material']);
    erpContextId = json['erpContextId'];
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'number': number,
      'split': split,
      'description': description,
      'material': material,
      'erpContextId': erpContextId
     };
  }

  static List<ProductionOrderProperties> listFromJson(List<dynamic> json) {
    return json == null ? new List<ProductionOrderProperties>() : json.map((value) => new ProductionOrderProperties.fromJson(value)).toList();
  }

  static Map<String, ProductionOrderProperties> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ProductionOrderProperties>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ProductionOrderProperties.fromJson(value));
    }
    return map;
  }
}
