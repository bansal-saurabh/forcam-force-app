part of swagger.api;

class LifeTime {
  /* The current tool life in msec */
  int current = null;
/* Warning limit for tool life in msec */
  int warningLimit = null;
/* The maximum tool life in msec */
  int maximum = null;

  LifeTime();

  @override
  String toString() {
    return 'LifeTime[current=$current, warningLimit=$warningLimit, maximum=$maximum, ]';
  }

  LifeTime.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    current = json['current'];
    warningLimit = json['warningLimit'];
    maximum = json['maximum'];
  }

  Map<String, dynamic> toJson() {
    return {
      'current': current,
      'warningLimit': warningLimit,
      'maximum': maximum
     };
  }

  static List<LifeTime> listFromJson(List<dynamic> json) {
    return json == null ? new List<LifeTime>() : json.map((value) => new LifeTime.fromJson(value)).toList();
  }

  static Map<String, LifeTime> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, LifeTime>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new LifeTime.fromJson(value));
    }
    return map;
  }
}
