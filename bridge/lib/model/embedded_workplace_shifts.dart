part of swagger.api;

class EmbeddedWorkplaceShifts {
  /* The shifts */
  List<WorkplaceShift> shifts = [];

  EmbeddedWorkplaceShifts();

  @override
  String toString() {
    return 'EmbeddedWorkplaceShifts[shifts=$shifts, ]';
  }

  EmbeddedWorkplaceShifts.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    shifts = WorkplaceShift.listFromJson(json['shifts']);
  }

  Map<String, dynamic> toJson() {
    return {
      'shifts': shifts
     };
  }

  static List<EmbeddedWorkplaceShifts> listFromJson(List<dynamic> json) {
    return json == null ? new List<EmbeddedWorkplaceShifts>() : json.map((value) => new EmbeddedWorkplaceShifts.fromJson(value)).toList();
  }

  static Map<String, EmbeddedWorkplaceShifts> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, EmbeddedWorkplaceShifts>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new EmbeddedWorkplaceShifts.fromJson(value));
    }
    return map;
  }
}
