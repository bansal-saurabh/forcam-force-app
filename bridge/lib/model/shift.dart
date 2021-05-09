part of swagger.api;

class Shift {
  /* The associated shift day */
  DateTime associatedDay = null;

  ZonedTimePeriodDefinition timePeriod = null;
/* Array of shift breaks */
  List<ShiftBreak> breaks = [];

  Shift();

  @override
  String toString() {
    return 'Shift[associatedDay=$associatedDay, timePeriod=$timePeriod, breaks=$breaks, ]';
  }

  Shift.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    associatedDay = new DateTime.fromJson(json['associatedDay']);
    timePeriod = new ZonedTimePeriodDefinition.fromJson(json['timePeriod']);
    breaks = ShiftBreak.listFromJson(json['breaks']);
  }

  Map<String, dynamic> toJson() {
    return {
      'associatedDay': associatedDay,
      'timePeriod': timePeriod,
      'breaks': breaks
     };
  }

  static List<Shift> listFromJson(List<dynamic> json) {
    return json == null ? new List<Shift>() : json.map((value) => new Shift.fromJson(value)).toList();
  }

  static Map<String, Shift> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Shift>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Shift.fromJson(value));
    }
    return map;
  }
}
