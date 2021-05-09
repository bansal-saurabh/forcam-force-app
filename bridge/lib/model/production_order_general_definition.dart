part of swagger.api;

class ProductionOrderGeneralDefinition {
  /* UUID of the production order */
  String id = null;
/* The order number */
  String number = null;
/* The order split */
  String split = null;
/* A description of the order */
  String description = null;

  MaterialProperties material = null;
/* UUID of the ERP context in which the workplace number is a unique identifier for a workplace or a workplace group. In SAP ERP, for example, this context is defined by the client, the company code, and the plant */
  String erpContextId = null;

  ProductionOrderGeneralDefinition();

  @override
  String toString() {
    return 'ProductionOrderGeneralDefinition[id=$id, number=$number, split=$split, description=$description, material=$material, erpContextId=$erpContextId, ]';
  }

  ProductionOrderGeneralDefinition.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    number = json['number'];
    split = json['split'];
    description = json['description'];
    material = new MaterialProperties.fromJson(json['material']);
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

  static List<ProductionOrderGeneralDefinition> listFromJson(List<dynamic> json) {
    return json == null ? new List<ProductionOrderGeneralDefinition>() : json.map((value) => new ProductionOrderGeneralDefinition.fromJson(value)).toList();
  }

  static Map<String, ProductionOrderGeneralDefinition> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ProductionOrderGeneralDefinition>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ProductionOrderGeneralDefinition.fromJson(value));
    }
    return map;
  }
}
