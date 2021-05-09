part of swagger.api;

class WorkplaceScheduledMaintenanceTimesPropertiesWSModel {
  /* Array of time periods, i.e. the periods from the start date to th end date of a scheduled maintenance */
  List<TimePeriodDefinition> elements = [];

  WorkplaceScheduledMaintenanceTimesPropertiesWSModel();

  @override
  String toString() {
    return 'WorkplaceScheduledMaintenanceTimesPropertiesWSModel[elements=$elements, ]';
  }

  WorkplaceScheduledMaintenanceTimesPropertiesWSModel.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    elements = TimePeriodDefinition.listFromJson(json['elements']);
  }

  Map<String, dynamic> toJson() {
    return {
      'elements': elements
     };
  }

  static List<WorkplaceScheduledMaintenanceTimesPropertiesWSModel> listFromJson(List<dynamic> json) {
    return json == null ? new List<WorkplaceScheduledMaintenanceTimesPropertiesWSModel>() : json.map((value) => new WorkplaceScheduledMaintenanceTimesPropertiesWSModel.fromJson(value)).toList();
  }

  static Map<String, WorkplaceScheduledMaintenanceTimesPropertiesWSModel> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, WorkplaceScheduledMaintenanceTimesPropertiesWSModel>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new WorkplaceScheduledMaintenanceTimesPropertiesWSModel.fromJson(value));
    }
    return map;
  }
}
