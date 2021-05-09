part of swagger.api;

class ProductionOrderOperation {
  /* UUID of the operation */
  String id = null;
/* The operation number within the ERP system */
  String number = null;
/* Number of the operation split */
  String split = null;
/* The operation sequence number within the ERP system */
  String sequenceNumber = null;
/* A description of the operation */
  String description = null;

  MaterialProperties material = null;
/* UUID of the ERP context in which the workplace number is a unique identifier for a workplace or a workplace group. In SAP ERP, for example, this context is defined by the client, the company code, and the plant */
  String erpContextId = null;

  ProductionOrderGeneralDefinition productionOrder = null;

  ProductionOrderOperation();

  @override
  String toString() {
    return 'ProductionOrderOperation[id=$id, number=$number, split=$split, sequenceNumber=$sequenceNumber, description=$description, material=$material, erpContextId=$erpContextId, productionOrder=$productionOrder, ]';
  }

  ProductionOrderOperation.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    number = json['number'];
    split = json['split'];
    sequenceNumber = json['sequenceNumber'];
    description = json['description'];
    material = new MaterialProperties.fromJson(json['material']);
    erpContextId = json['erpContextId'];
    productionOrder = new ProductionOrderGeneralDefinition.fromJson(json['productionOrder']);
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'number': number,
      'split': split,
      'sequenceNumber': sequenceNumber,
      'description': description,
      'material': material,
      'erpContextId': erpContextId,
      'productionOrder': productionOrder
     };
  }

  static List<ProductionOrderOperation> listFromJson(List<dynamic> json) {
    return json == null ? new List<ProductionOrderOperation>() : json.map((value) => new ProductionOrderOperation.fromJson(value)).toList();
  }

  static Map<String, ProductionOrderOperation> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ProductionOrderOperation>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ProductionOrderOperation.fromJson(value));
    }
    return map;
  }
}
