part of swagger.api;

class MachineProperties {
  /* UUID of the machine */
  String id = null;

  String machineStateId = null;
  //enum machineStateIdEnum {  DOWNTIME,  PRODUCTION,  SETUP,  };
/* Number of the machine */
  String number = null;
/* Description of the machine */
  String description = null;
/* UUID of the ERP Context to which the machine belongs to */
  String erpContextId = null;
/* UUID of the assigned workplace */
  String workplaceId = null;

  MachineProperties();

  @override
  String toString() {
    return 'MachineProperties[id=$id, machineStateId=$machineStateId, number=$number, description=$description, erpContextId=$erpContextId, workplaceId=$workplaceId, ]';
  }

  MachineProperties.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    machineStateId = json['machineStateId'];
    number = json['number'];
    description = json['description'];
    erpContextId = json['erpContextId'];
    workplaceId = json['workplaceId'];
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'machineStateId': machineStateId,
      'number': number,
      'description': description,
      'erpContextId': erpContextId,
      'workplaceId': workplaceId
     };
  }

  static List<MachineProperties> listFromJson(List<dynamic> json) {
    return json == null ? new List<MachineProperties>() : json.map((value) => new MachineProperties.fromJson(value)).toList();
  }

  static Map<String, MachineProperties> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, MachineProperties>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new MachineProperties.fromJson(value));
    }
    return map;
  }
}
