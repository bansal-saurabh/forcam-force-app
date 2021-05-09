part of swagger.api;

class WorkplaceScheduledOperatingTimesPropertiesWSModel {
  /* Array of time periods from the start date to the end date of an uninterrupted segment of the scheduled operating time */
  List<TimePeriodDefinition> elements = [];

  WorkplaceScheduledOperatingTimesPropertiesWSModel();

  @override
  String toString() {
    return 'WorkplaceScheduledOperatingTimesPropertiesWSModel[elements=$elements, ]';
  }

  WorkplaceScheduledOperatingTimesPropertiesWSModel.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    elements = TimePeriodDefinition.listFromJson(json['elements']);
  }

  Map<String, dynamic> toJson() {
    return {
      'elements': elements
     };
  }

  static List<WorkplaceScheduledOperatingTimesPropertiesWSModel> listFromJson(List<dynamic> json) {
    return json == null ? new List<WorkplaceScheduledOperatingTimesPropertiesWSModel>() : json.map((value) => new WorkplaceScheduledOperatingTimesPropertiesWSModel.fromJson(value)).toList();
  }

  static Map<String, WorkplaceScheduledOperatingTimesPropertiesWSModel> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, WorkplaceScheduledOperatingTimesPropertiesWSModel>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new WorkplaceScheduledOperatingTimesPropertiesWSModel.fromJson(value));
    }
    return map;
  }
}
