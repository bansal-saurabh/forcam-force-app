part of swagger.api;

class EmbeddedOperatingStates {
  /* The operating states */
  List<OperatingState> statusDefinitions = [];

  EmbeddedOperatingStates();

  @override
  String toString() {
    return 'EmbeddedOperatingStates[statusDefinitions=$statusDefinitions, ]';
  }

  EmbeddedOperatingStates.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    statusDefinitions = OperatingState.listFromJson(json['statusDefinitions']);
  }

  Map<String, dynamic> toJson() {
    return {
      'statusDefinitions': statusDefinitions
     };
  }

  static List<EmbeddedOperatingStates> listFromJson(List<dynamic> json) {
    return json == null ? new List<EmbeddedOperatingStates>() : json.map((value) => new EmbeddedOperatingStates.fromJson(value)).toList();
  }

  static Map<String, EmbeddedOperatingStates> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, EmbeddedOperatingStates>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new EmbeddedOperatingStates.fromJson(value));
    }
    return map;
  }
}
