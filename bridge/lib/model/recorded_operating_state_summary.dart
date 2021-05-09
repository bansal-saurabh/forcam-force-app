part of swagger.api;

class RecordedOperatingStateSummary {
  
  OperatingStateGeneralDefinition operatingState = null;
/* Total duration of the operating state during the execution of the operation in msec */
  int duration = null;
/* Frequency of the operating state during the execution of the operation */
  int frequency = null;

  RecordedOperatingStateSummary();

  @override
  String toString() {
    return 'RecordedOperatingStateSummary[operatingState=$operatingState, duration=$duration, frequency=$frequency, ]';
  }

  RecordedOperatingStateSummary.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    operatingState = new OperatingStateGeneralDefinition.fromJson(json['operatingState']);
    duration = json['duration'];
    frequency = json['frequency'];
  }

  Map<String, dynamic> toJson() {
    return {
      'operatingState': operatingState,
      'duration': duration,
      'frequency': frequency
     };
  }

  static List<RecordedOperatingStateSummary> listFromJson(List<dynamic> json) {
    return json == null ? new List<RecordedOperatingStateSummary>() : json.map((value) => new RecordedOperatingStateSummary.fromJson(value)).toList();
  }

  static Map<String, RecordedOperatingStateSummary> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, RecordedOperatingStateSummary>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new RecordedOperatingStateSummary.fromJson(value));
    }
    return map;
  }
}
