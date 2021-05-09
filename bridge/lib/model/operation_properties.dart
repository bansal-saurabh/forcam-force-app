part of swagger.api;

class OperationProperties {
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
/* The start date of the operation */
  DateTime startDate = null;
/* The end date of the operation */
  DateTime endDate = null;

  MaterialProperties material = null;
/* UUID of the ERP context in which the workplace number is a unique identifier for a workplace or a workplace group. In SAP ERP, for example, this context is defined by the client, the company code, and the plant */
  String erpContextId = null;

  ProductionOrderGeneralDefinition productionOrder = null;

  WorkplaceGeneralDefinition currentWorkplace = null;
/* The identifier of the current operation phase */
  String operationPhaseId = null;
  //enum operationPhaseIdEnum {  RELEASED,  COMPLETED,  SETUP,  PROCESSING,  DISPATCHED,  TRAINING,  CLOSED,  INTERRUPTED,  WAITING_BEFORE_PROCESSING,  WAITING_AFTER_PROCESSING,  };

  OperationProperties();

  @override
  String toString() {
    return 'OperationProperties[id=$id, number=$number, split=$split, sequenceNumber=$sequenceNumber, description=$description, startDate=$startDate, endDate=$endDate, material=$material, erpContextId=$erpContextId, productionOrder=$productionOrder, currentWorkplace=$currentWorkplace, operationPhaseId=$operationPhaseId, ]';
  }

  OperationProperties.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    number = json['number'];
    split = json['split'];
    sequenceNumber = json['sequenceNumber'];
    description = json['description'];
    startDate = json['startDate'] == null ? null : DateTime.parse(json['startDate']);
    endDate = json['endDate'] == null ? null : DateTime.parse(json['endDate']);
    material = new MaterialProperties.fromJson(json['material']);
    erpContextId = json['erpContextId'];
    productionOrder = new ProductionOrderGeneralDefinition.fromJson(json['productionOrder']);
    currentWorkplace = new WorkplaceGeneralDefinition.fromJson(json['currentWorkplace']);
    operationPhaseId = json['operationPhaseId'];
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'number': number,
      'split': split,
      'sequenceNumber': sequenceNumber,
      'description': description,
      'startDate': startDate == null ? '' : startDate.toUtc().toIso8601String(),
      'endDate': endDate == null ? '' : endDate.toUtc().toIso8601String(),
      'material': material,
      'erpContextId': erpContextId,
      'productionOrder': productionOrder,
      'currentWorkplace': currentWorkplace,
      'operationPhaseId': operationPhaseId
     };
  }

  static List<OperationProperties> listFromJson(List<dynamic> json) {
    return json == null ? new List<OperationProperties>() : json.map((value) => new OperationProperties.fromJson(value)).toList();
  }

  static Map<String, OperationProperties> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, OperationProperties>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new OperationProperties.fromJson(value));
    }
    return map;
  }
}
