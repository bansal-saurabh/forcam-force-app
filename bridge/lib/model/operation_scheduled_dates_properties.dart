part of swagger.api;

class OperationScheduledDatesProperties {
  /* Earliest start timestamp determined by lead time scheduling */
  DateTime earliestStartDate = null;
/* Latest start timestamp determined by lead time scheduling */
  DateTime latestStartDate = null;
/* Earliest end timestamp determined by lead time scheduling */
  DateTime earliestEndDate = null;
/* Latest end time determined by lead time scheduling */
  DateTime latestEndDate = null;
/* Scheduled start timestamp determined by lead time scheduling */
  DateTime scheduledStartDate = null;
/* Scheduled end timestamp determined by lead time scheduling */
  DateTime scheduledEndDate = null;

  OperationScheduledDatesProperties();

  @override
  String toString() {
    return 'OperationScheduledDatesProperties[earliestStartDate=$earliestStartDate, latestStartDate=$latestStartDate, earliestEndDate=$earliestEndDate, latestEndDate=$latestEndDate, scheduledStartDate=$scheduledStartDate, scheduledEndDate=$scheduledEndDate, ]';
  }

  OperationScheduledDatesProperties.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    earliestStartDate = json['earliestStartDate'] == null ? null : DateTime.parse(json['earliestStartDate']);
    latestStartDate = json['latestStartDate'] == null ? null : DateTime.parse(json['latestStartDate']);
    earliestEndDate = json['earliestEndDate'] == null ? null : DateTime.parse(json['earliestEndDate']);
    latestEndDate = json['latestEndDate'] == null ? null : DateTime.parse(json['latestEndDate']);
    scheduledStartDate = json['scheduledStartDate'] == null ? null : DateTime.parse(json['scheduledStartDate']);
    scheduledEndDate = json['scheduledEndDate'] == null ? null : DateTime.parse(json['scheduledEndDate']);
  }

  Map<String, dynamic> toJson() {
    return {
      'earliestStartDate': earliestStartDate == null ? '' : earliestStartDate.toUtc().toIso8601String(),
      'latestStartDate': latestStartDate == null ? '' : latestStartDate.toUtc().toIso8601String(),
      'earliestEndDate': earliestEndDate == null ? '' : earliestEndDate.toUtc().toIso8601String(),
      'latestEndDate': latestEndDate == null ? '' : latestEndDate.toUtc().toIso8601String(),
      'scheduledStartDate': scheduledStartDate == null ? '' : scheduledStartDate.toUtc().toIso8601String(),
      'scheduledEndDate': scheduledEndDate == null ? '' : scheduledEndDate.toUtc().toIso8601String()
     };
  }

  static List<OperationScheduledDatesProperties> listFromJson(List<dynamic> json) {
    return json == null ? new List<OperationScheduledDatesProperties>() : json.map((value) => new OperationScheduledDatesProperties.fromJson(value)).toList();
  }

  static Map<String, OperationScheduledDatesProperties> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, OperationScheduledDatesProperties>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new OperationScheduledDatesProperties.fromJson(value));
    }
    return map;
  }
}
