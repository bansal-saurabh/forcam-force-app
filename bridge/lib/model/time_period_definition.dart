part of swagger.api;

class TimePeriodDefinition {
  /* Start timestamp of the time period */
  DateTime startDate = null;
/* End timestamp of the time period */
  DateTime endDate = null;
/* Duration in msec */
  int duration = null;

  TimePeriodDefinition();

  @override
  String toString() {
    return 'TimePeriodDefinition[startDate=$startDate, endDate=$endDate, duration=$duration, ]';
  }

  TimePeriodDefinition.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    startDate = json['startDate'] == null ? null : DateTime.parse(json['startDate']);
    endDate = json['endDate'] == null ? null : DateTime.parse(json['endDate']);
    duration = json['duration'];
  }

  Map<String, dynamic> toJson() {
    return {
      'startDate': startDate == null ? '' : startDate.toUtc().toIso8601String(),
      'endDate': endDate == null ? '' : endDate.toUtc().toIso8601String(),
      'duration': duration
     };
  }

  static List<TimePeriodDefinition> listFromJson(List<dynamic> json) {
    return json == null ? new List<TimePeriodDefinition>() : json.map((value) => new TimePeriodDefinition.fromJson(value)).toList();
  }

  static Map<String, TimePeriodDefinition> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, TimePeriodDefinition>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new TimePeriodDefinition.fromJson(value));
    }
    return map;
  }
}
