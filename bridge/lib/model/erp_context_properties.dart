part of swagger.api;

class ErpContextProperties {
  /* UUID of the ERP Context */
  String id = null;
/* Identifier of the ERP system */
  String systemNumber = null;
/* ERP context type */
  String type = null;
  //enum typeEnum {  PLANT,  PERSONNEL_AREA,  };
/* First identifier of ERP key */
  String identifier1 = null;
/* Second identifier of ERP key */
  String identifier2 = null;
/* Third identifier of ERP key */
  String identifier3 = null;

  ErpContextProperties();

  @override
  String toString() {
    return 'ErpContextProperties[id=$id, systemNumber=$systemNumber, type=$type, identifier1=$identifier1, identifier2=$identifier2, identifier3=$identifier3, ]';
  }

  ErpContextProperties.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    systemNumber = json['systemNumber'];
    type = json['type'];
    identifier1 = json['identifier1'];
    identifier2 = json['identifier2'];
    identifier3 = json['identifier3'];
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'systemNumber': systemNumber,
      'type': type,
      'identifier1': identifier1,
      'identifier2': identifier2,
      'identifier3': identifier3
     };
  }

  static List<ErpContextProperties> listFromJson(List<dynamic> json) {
    return json == null ? new List<ErpContextProperties>() : json.map((value) => new ErpContextProperties.fromJson(value)).toList();
  }

  static Map<String, ErpContextProperties> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ErpContextProperties>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ErpContextProperties.fromJson(value));
    }
    return map;
  }
}
