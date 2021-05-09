part of swagger.api;

class WorkplaceProperties {
  /* UUID of the workplace  */
  String id = null;
/* The workplace number which is unique in its ERP context */
  String number = null;
/* A description of the workplace  */
  String description = null;
/* UUID of the ERP context in which the workplace number is a unique identifier for a workplace or a workplace group. In SAP ERP, for example, this context is defined by the client, the company code, and the plant */
  String erpContextId = null;

  WorkplaceGroupProperties capacityGroup = null;

  WorkplaceGroupProperties productionLine = null;

  OperatingStateGeneralDefinition operatingState = null;
/* The type of the workplace e.g. 'MANUAL MACHINE WORKPLACE','MANUAL WORKPLACE' or 'MACHINE WORKPLACE' */
  String workplaceType = null;
  //enum workplaceTypeEnum {  MACHINE_WORKPLACE,  MANUAL_WORKPLACE,  MANUAL_MACHINE_WORKPLACE,  };

  WorkplaceProperties();

  @override
  String toString() {
    return 'WorkplaceProperties[id=$id, number=$number, description=$description, erpContextId=$erpContextId, capacityGroup=$capacityGroup, productionLine=$productionLine, operatingState=$operatingState, workplaceType=$workplaceType, ]';
  }

  WorkplaceProperties.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    number = json['number'];
    description = json['description'];
    erpContextId = json['erpContextId'];
    capacityGroup = new WorkplaceGroupProperties.fromJson(json['capacityGroup']);
    productionLine = new WorkplaceGroupProperties.fromJson(json['productionLine']);
    operatingState = new OperatingStateGeneralDefinition.fromJson(json['operatingState']);
    workplaceType = json['workplaceType'];
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'number': number,
      'description': description,
      'erpContextId': erpContextId,
      'capacityGroup': capacityGroup,
      'productionLine': productionLine,
      'operatingState': operatingState,
      'workplaceType': workplaceType
     };
  }

  static List<WorkplaceProperties> listFromJson(List<dynamic> json) {
    return json == null ? new List<WorkplaceProperties>() : json.map((value) => new WorkplaceProperties.fromJson(value)).toList();
  }

  static Map<String, WorkplaceProperties> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, WorkplaceProperties>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new WorkplaceProperties.fromJson(value));
    }
    return map;
  }
}
