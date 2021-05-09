part of swagger.api;

class EmbeddedShiftTypes {
  /* The shift types */
  List<ShiftType> shiftTypes = [];

  EmbeddedShiftTypes();

  @override
  String toString() {
    return 'EmbeddedShiftTypes[shiftTypes=$shiftTypes, ]';
  }

  EmbeddedShiftTypes.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    shiftTypes = ShiftType.listFromJson(json['shiftTypes']);
  }

  Map<String, dynamic> toJson() {
    return {
      'shiftTypes': shiftTypes
     };
  }

  static List<EmbeddedShiftTypes> listFromJson(List<dynamic> json) {
    return json == null ? new List<EmbeddedShiftTypes>() : json.map((value) => new EmbeddedShiftTypes.fromJson(value)).toList();
  }

  static Map<String, EmbeddedShiftTypes> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, EmbeddedShiftTypes>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new EmbeddedShiftTypes.fromJson(value));
    }
    return map;
  }
}
