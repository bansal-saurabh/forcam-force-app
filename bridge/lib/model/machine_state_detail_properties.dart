part of swagger.api;

class MachineStateDetailProperties {
  
  String customerCode = null;

  String id = null;

  bool isAnnotatable = null;

  bool isRecodable = null;

  bool isSplittable = null;

  String description = null;

  String shortDescription = null;

  String code = null;

  String color = null;

  MachineStateDetailProperties();

  @override
  String toString() {
    return 'MachineStateDetailProperties[customerCode=$customerCode, id=$id, isAnnotatable=$isAnnotatable, isRecodable=$isRecodable, isSplittable=$isSplittable, description=$description, shortDescription=$shortDescription, code=$code, color=$color, ]';
  }

  MachineStateDetailProperties.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    customerCode = json['customerCode'];
    id = json['id'];
    isAnnotatable = json['isAnnotatable'];
    isRecodable = json['isRecodable'];
    isSplittable = json['isSplittable'];
    description = json['description'];
    shortDescription = json['shortDescription'];
    code = json['code'];
    color = json['color'];
  }

  Map<String, dynamic> toJson() {
    return {
      'customerCode': customerCode,
      'id': id,
      'isAnnotatable': isAnnotatable,
      'isRecodable': isRecodable,
      'isSplittable': isSplittable,
      'description': description,
      'shortDescription': shortDescription,
      'code': code,
      'color': color
     };
  }

  static List<MachineStateDetailProperties> listFromJson(List<dynamic> json) {
    return json == null ? new List<MachineStateDetailProperties>() : json.map((value) => new MachineStateDetailProperties.fromJson(value)).toList();
  }

  static Map<String, MachineStateDetailProperties> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, MachineStateDetailProperties>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new MachineStateDetailProperties.fromJson(value));
    }
    return map;
  }
}
