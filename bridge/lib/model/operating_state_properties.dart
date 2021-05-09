part of swagger.api;

class OperatingStateProperties {
  
  String customerCode = null;
/* UUID of the operating state */
  String id = null;

  bool isAnnotatable = null;

  bool isRecodable = null;

  bool isSplittable = null;
/* The description of the status definition */
  String description = null;
/* An additional short description */
  String shortDescription = null;
/* The code of the status definition */
  String code = null;
/* The hexadecimal value of the color assigned to the status definition */
  String color = null;
/* ID of the corresponding workplace state */
  String workplaceStateId = null;
  //enum workplaceStateIdEnum {  DOWNTIME,  PRODUCTION,  };
/* UUID of the operating state class */
  String operatingStateClassId = null;

  OperatingStateProperties();

  @override
  String toString() {
    return 'OperatingStateProperties[customerCode=$customerCode, id=$id, isAnnotatable=$isAnnotatable, isRecodable=$isRecodable, isSplittable=$isSplittable, description=$description, shortDescription=$shortDescription, code=$code, color=$color, workplaceStateId=$workplaceStateId, operatingStateClassId=$operatingStateClassId, ]';
  }

  OperatingStateProperties.fromJson(Map<String, dynamic> json) {
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
    workplaceStateId = json['workplaceStateId'];
    operatingStateClassId = json['operatingStateClassId'];
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
      'color': color,
      'workplaceStateId': workplaceStateId,
      'operatingStateClassId': operatingStateClassId
     };
  }

  static List<OperatingStateProperties> listFromJson(List<dynamic> json) {
    return json == null ? new List<OperatingStateProperties>() : json.map((value) => new OperatingStateProperties.fromJson(value)).toList();
  }

  static Map<String, OperatingStateProperties> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, OperatingStateProperties>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new OperatingStateProperties.fromJson(value));
    }
    return map;
  }
}
