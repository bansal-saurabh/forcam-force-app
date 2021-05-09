part of swagger.api;

class EmbeddedWorkplaceGroups {
  /* The workplace groups */
  List<WorkplaceGroup> workplaceGroups = [];

  EmbeddedWorkplaceGroups();

  @override
  String toString() {
    return 'EmbeddedWorkplaceGroups[workplaceGroups=$workplaceGroups, ]';
  }

  EmbeddedWorkplaceGroups.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    workplaceGroups = WorkplaceGroup.listFromJson(json['workplaceGroups']);
  }

  Map<String, dynamic> toJson() {
    return {
      'workplaceGroups': workplaceGroups
     };
  }

  static List<EmbeddedWorkplaceGroups> listFromJson(List<dynamic> json) {
    return json == null ? new List<EmbeddedWorkplaceGroups>() : json.map((value) => new EmbeddedWorkplaceGroups.fromJson(value)).toList();
  }

  static Map<String, EmbeddedWorkplaceGroups> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, EmbeddedWorkplaceGroups>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new EmbeddedWorkplaceGroups.fromJson(value));
    }
    return map;
  }
}
