part of swagger.api;

class ZonedTimePeriodDefinition {
  /* Start timestamp of the time period */
  DateTime startDate = null;
/* End timestamp of the time period */
  DateTime endDate = null;
/* Duration in msec */
  int duration = null;

  ZonedTimePeriodDefinition();

  @override
  String toString() {
    return 'ZonedTimePeriodDefinition[startDate=$startDate, endDate=$endDate, duration=$duration, ]';
  }

  ZonedTimePeriodDefinition.fromJson(Map<String, dynamic> json) {
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

  static List<ZonedTimePeriodDefinition> listFromJson(List<dynamic> json) {
    return json == null ? new List<ZonedTimePeriodDefinition>() : json.map((value) => new ZonedTimePeriodDefinition.fromJson(value)).toList();
  }

  static Map<String, ZonedTimePeriodDefinition> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ZonedTimePeriodDefinition>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ZonedTimePeriodDefinition.fromJson(value));
    }
    return map;
  }
}
