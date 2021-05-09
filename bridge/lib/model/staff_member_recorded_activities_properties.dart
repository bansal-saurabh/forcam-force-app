part of swagger.api;

class StaffMemberRecordedActivitiesProperties {
  /* Array of activity records */
  List<StaffMemberLoginPeriodRecord> elements = [];

  StaffMemberRecordedActivitiesProperties();

  @override
  String toString() {
    return 'StaffMemberRecordedActivitiesProperties[elements=$elements, ]';
  }

  StaffMemberRecordedActivitiesProperties.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    elements = StaffMemberLoginPeriodRecord.listFromJson(json['elements']);
  }

  Map<String, dynamic> toJson() {
    return {
      'elements': elements
     };
  }

  static List<StaffMemberRecordedActivitiesProperties> listFromJson(List<dynamic> json) {
    return json == null ? new List<StaffMemberRecordedActivitiesProperties>() : json.map((value) => new StaffMemberRecordedActivitiesProperties.fromJson(value)).toList();
  }

  static Map<String, StaffMemberRecordedActivitiesProperties> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, StaffMemberRecordedActivitiesProperties>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new StaffMemberRecordedActivitiesProperties.fromJson(value));
    }
    return map;
  }
}
