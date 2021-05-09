part of swagger.api;

class EmbeddedStatusDefinition {
  /* The status definitions */
  List<StatusDefinition> statusDefinitions = [];

  EmbeddedStatusDefinition();

  @override
  String toString() {
    return 'EmbeddedStatusDefinition[statusDefinitions=$statusDefinitions, ]';
  }

  EmbeddedStatusDefinition.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    statusDefinitions = StatusDefinition.listFromJson(json['statusDefinitions']);
  }

  Map<String, dynamic> toJson() {
    return {
      'statusDefinitions': statusDefinitions
     };
  }

  static List<EmbeddedStatusDefinition> listFromJson(List<dynamic> json) {
    return json == null ? new List<EmbeddedStatusDefinition>() : json.map((value) => new EmbeddedStatusDefinition.fromJson(value)).toList();
  }

  static Map<String, EmbeddedStatusDefinition> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, EmbeddedStatusDefinition>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new EmbeddedStatusDefinition.fromJson(value));
    }
    return map;
  }
}
