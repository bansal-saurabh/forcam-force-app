part of swagger.api;

class TimeSeriesWSModel {
  /* The time of recording or measurement */
  DateTime timestamp = null;
/* The corresponding value */
  String value = null;

  TimeSeriesWSModel();

  @override
  String toString() {
    return 'TimeSeriesWSModel[timestamp=$timestamp, value=$value, ]';
  }

  TimeSeriesWSModel.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    timestamp = json['timestamp'] == null ? null : DateTime.parse(json['timestamp']);
    value = json['value'];
  }

  Map<String, dynamic> toJson() {
    return {
      'timestamp': timestamp == null ? '' : timestamp.toUtc().toIso8601String(),
      'value': value
     };
  }

  static List<TimeSeriesWSModel> listFromJson(List<dynamic> json) {
    return json == null ? new List<TimeSeriesWSModel>() : json.map((value) => new TimeSeriesWSModel.fromJson(value)).toList();
  }

  static Map<String, TimeSeriesWSModel> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, TimeSeriesWSModel>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new TimeSeriesWSModel.fromJson(value));
    }
    return map;
  }
}
