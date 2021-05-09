part of swagger.api;

class ShiftBreak {
  
  ZonedTimePeriodDefinition timePeriod = null;

  ShiftBreak();

  @override
  String toString() {
    return 'ShiftBreak[timePeriod=$timePeriod, ]';
  }

  ShiftBreak.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    timePeriod = new ZonedTimePeriodDefinition.fromJson(json['timePeriod']);
  }

  Map<String, dynamic> toJson() {
    return {
      'timePeriod': timePeriod
     };
  }

  static List<ShiftBreak> listFromJson(List<dynamic> json) {
    return json == null ? new List<ShiftBreak>() : json.map((value) => new ShiftBreak.fromJson(value)).toList();
  }

  static Map<String, ShiftBreak> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ShiftBreak>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ShiftBreak.fromJson(value));
    }
    return map;
  }
}
