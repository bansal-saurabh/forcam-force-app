part of swagger.api;

class EmbeddedWorkplaces {
  /* The workplaces */
  List<Workplace> workplaces = [];

  EmbeddedWorkplaces();

  @override
  String toString() {
    return 'EmbeddedWorkplaces[workplaces=$workplaces, ]';
  }

  EmbeddedWorkplaces.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    workplaces = Workplace.listFromJson(json['workplaces']);
  }

  Map<String, dynamic> toJson() {
    return {
      'workplaces': workplaces
     };
  }

  static List<EmbeddedWorkplaces> listFromJson(List<dynamic> json) {
    return json == null ? new List<EmbeddedWorkplaces>() : json.map((value) => new EmbeddedWorkplaces.fromJson(value)).toList();
  }

  static Map<String, EmbeddedWorkplaces> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, EmbeddedWorkplaces>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new EmbeddedWorkplaces.fromJson(value));
    }
    return map;
  }
}
