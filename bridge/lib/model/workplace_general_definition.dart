part of swagger.api;

class WorkplaceGeneralDefinition {
  /* UUID of the workplace */
  String id = null;
/* The workplace number which is unique in its ERP context */
  String number = null;
/* A description of the workplace */
  String description = null;
/* UUID of the ERP context in which the workplace number is a unique identifier for a workplace or a workplace group. In SAP ERP, for example, this context is defined by the client, the company code, and the plant */
  String erpContextId = null;

  WorkplaceGeneralDefinition();

  @override
  String toString() {
    return 'WorkplaceGeneralDefinition[id=$id, number=$number, description=$description, erpContextId=$erpContextId, ]';
  }

  WorkplaceGeneralDefinition.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    number = json['number'];
    description = json['description'];
    erpContextId = json['erpContextId'];
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'number': number,
      'description': description,
      'erpContextId': erpContextId
     };
  }

  static List<WorkplaceGeneralDefinition> listFromJson(List<dynamic> json) {
    return json == null ? new List<WorkplaceGeneralDefinition>() : json.map((value) => new WorkplaceGeneralDefinition.fromJson(value)).toList();
  }

  static Map<String, WorkplaceGeneralDefinition> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, WorkplaceGeneralDefinition>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new WorkplaceGeneralDefinition.fromJson(value));
    }
    return map;
  }
}
