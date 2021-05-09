part of swagger.api;

class OperatingStateRecord {
  
  OperatingStateGeneralDefinition operatingState = null;

  TimePeriodDefinition timePeriod = null;

  OperatingStateRecord();

  @override
  String toString() {
    return 'OperatingStateRecord[operatingState=$operatingState, timePeriod=$timePeriod, ]';
  }

  OperatingStateRecord.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    operatingState = new OperatingStateGeneralDefinition.fromJson(json['operatingState']);
    timePeriod = new TimePeriodDefinition.fromJson(json['timePeriod']);
  }

  Map<String, dynamic> toJson() {
    return {
      'operatingState': operatingState,
      'timePeriod': timePeriod
     };
  }

  static List<OperatingStateRecord> listFromJson(List<dynamic> json) {
    return json == null ? new List<OperatingStateRecord>() : json.map((value) => new OperatingStateRecord.fromJson(value)).toList();
  }

  static Map<String, OperatingStateRecord> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, OperatingStateRecord>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new OperatingStateRecord.fromJson(value));
    }
    return map;
  }
}
