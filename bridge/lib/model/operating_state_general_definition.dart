part of swagger.api;

class OperatingStateGeneralDefinition {
  /* UUID of the operating state */
  String id = null;
/* A description of the operating state */
  String description = null;
/* The code assigned to the operating state */
  String code = null;
/* ID of the corresponding workplace state */
  String workplaceStateId = null;
  //enum workplaceStateIdEnum {  DOWNTIME,  PRODUCTION,  };

  OperatingStateGeneralDefinition();

  @override
  String toString() {
    return 'OperatingStateGeneralDefinition[id=$id, description=$description, code=$code, workplaceStateId=$workplaceStateId, ]';
  }

  OperatingStateGeneralDefinition.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    description = json['description'];
    code = json['code'];
    workplaceStateId = json['workplaceStateId'];
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'description': description,
      'code': code,
      'workplaceStateId': workplaceStateId
     };
  }

  static List<OperatingStateGeneralDefinition> listFromJson(List<dynamic> json) {
    return json == null ? new List<OperatingStateGeneralDefinition>() : json.map((value) => new OperatingStateGeneralDefinition.fromJson(value)).toList();
  }

  static Map<String, OperatingStateGeneralDefinition> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, OperatingStateGeneralDefinition>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new OperatingStateGeneralDefinition.fromJson(value));
    }
    return map;
  }
}
