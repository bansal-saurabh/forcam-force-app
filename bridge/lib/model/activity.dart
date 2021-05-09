part of swagger.api;

class Activity {
  
  String activityIdentifier = null;

  Map<String, String> data = {};

  String relationIdentifier = null;

  String relationType = null;
  //enum relationTypeEnum {  TERMINAL,  WORKPLACE,  };

  Activity();

  @override
  String toString() {
    return 'Activity[activityIdentifier=$activityIdentifier, data=$data, relationIdentifier=$relationIdentifier, relationType=$relationType, ]';
  }

  Activity.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    activityIdentifier = json['activityIdentifier'];
    data = json['data'];
    relationIdentifier = json['relationIdentifier'];
    relationType = json['relationType'];
  }

  Map<String, dynamic> toJson() {
    return {
      'activityIdentifier': activityIdentifier,
      'data': data,
      'relationIdentifier': relationIdentifier,
      'relationType': relationType
     };
  }

  static List<Activity> listFromJson(List<dynamic> json) {
    return json == null ? new List<Activity>() : json.map((value) => new Activity.fromJson(value)).toList();
  }

  static Map<String, Activity> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Activity>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Activity.fromJson(value));
    }
    return map;
  }
}
