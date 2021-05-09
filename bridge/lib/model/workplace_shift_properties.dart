part of swagger.api;

class WorkplaceShiftProperties {
  /* UUID of the workplace shift */
  String id = null;
/* UUID of the workplace */
  String workplaceId = null;

  Shift shift = null;
/* UUID of the shift type */
  String shiftTypeId = null;
/* Boolean to indicate the shift as working shift or nonworking shift */
  bool isWorkingShift = null;

  WorkplaceShiftProperties();

  @override
  String toString() {
    return 'WorkplaceShiftProperties[id=$id, workplaceId=$workplaceId, shift=$shift, shiftTypeId=$shiftTypeId, isWorkingShift=$isWorkingShift, ]';
  }

  WorkplaceShiftProperties.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    workplaceId = json['workplaceId'];
    shift = new Shift.fromJson(json['shift']);
    shiftTypeId = json['shiftTypeId'];
    isWorkingShift = json['isWorkingShift'];
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'workplaceId': workplaceId,
      'shift': shift,
      'shiftTypeId': shiftTypeId,
      'isWorkingShift': isWorkingShift
     };
  }

  static List<WorkplaceShiftProperties> listFromJson(List<dynamic> json) {
    return json == null ? new List<WorkplaceShiftProperties>() : json.map((value) => new WorkplaceShiftProperties.fromJson(value)).toList();
  }

  static Map<String, WorkplaceShiftProperties> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, WorkplaceShiftProperties>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new WorkplaceShiftProperties.fromJson(value));
    }
    return map;
  }
}
