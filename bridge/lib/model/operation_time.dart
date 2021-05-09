part of swagger.api;

class OperationTime {
  /* The name of operation time */
  String name = null;
/* The duration of the operation time */
  int duration = null;

  OperationTime();

  @override
  String toString() {
    return 'OperationTime[name=$name, duration=$duration, ]';
  }

  OperationTime.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    name = json['name'];
    duration = json['duration'];
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'duration': duration
     };
  }

  static List<OperationTime> listFromJson(List<dynamic> json) {
    return json == null ? new List<OperationTime>() : json.map((value) => new OperationTime.fromJson(value)).toList();
  }

  static Map<String, OperationTime> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, OperationTime>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new OperationTime.fromJson(value));
    }
    return map;
  }
}
