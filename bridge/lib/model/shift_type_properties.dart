part of swagger.api;

class ShiftTypeProperties {
  /* The UUID of the shift type */
  String id = null;
/* Description of the shift type */
  String description = null;
/* Short description of the shift type */
  String shortDescription = null;
/* Boolean to indicate the shift type as working shift or nonworking shift */
  bool isWorkingShift = null;

  ShiftTypeProperties();

  @override
  String toString() {
    return 'ShiftTypeProperties[id=$id, description=$description, shortDescription=$shortDescription, isWorkingShift=$isWorkingShift, ]';
  }

  ShiftTypeProperties.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    description = json['description'];
    shortDescription = json['shortDescription'];
    isWorkingShift = json['isWorkingShift'];
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'description': description,
      'shortDescription': shortDescription,
      'isWorkingShift': isWorkingShift
     };
  }

  static List<ShiftTypeProperties> listFromJson(List<dynamic> json) {
    return json == null ? new List<ShiftTypeProperties>() : json.map((value) => new ShiftTypeProperties.fromJson(value)).toList();
  }

  static Map<String, ShiftTypeProperties> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ShiftTypeProperties>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ShiftTypeProperties.fromJson(value));
    }
    return map;
  }
}
