part of swagger.api;

class WorkplaceGroupProperties {
  /* UUID of the workplace group */
  String id = null;
/* The workplace group number which is unique in its ERP context */
  String number = null;
/* A description of the workplace group */
  String description = null;
/* Type of the workplace group, either “CAPACITY_GROUP” or “PRODUCTION_LINE” */
  String type = null;
  //enum typeEnum {  CAPACITY_GROUP,  PRODUCTION_LINE,  };
/* Universally unique identifier of the ERP context in which the workplace number is a unique identifier for a workplace or a workplace group. In SAP ERP, for example, this context is defined by the client, the company code, and the plant */
  String erpContextId = null;

  WorkplaceGroupProperties();

  @override
  String toString() {
    return 'WorkplaceGroupProperties[id=$id, number=$number, description=$description, type=$type, erpContextId=$erpContextId, ]';
  }

  WorkplaceGroupProperties.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    number = json['number'];
    description = json['description'];
    type = json['type'];
    erpContextId = json['erpContextId'];
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'number': number,
      'description': description,
      'type': type,
      'erpContextId': erpContextId
     };
  }

  static List<WorkplaceGroupProperties> listFromJson(List<dynamic> json) {
    return json == null ? new List<WorkplaceGroupProperties>() : json.map((value) => new WorkplaceGroupProperties.fromJson(value)).toList();
  }

  static Map<String, WorkplaceGroupProperties> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, WorkplaceGroupProperties>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new WorkplaceGroupProperties.fromJson(value));
    }
    return map;
  }
}
