part of swagger.api;

class EmbeddedMachines {
  /* The machines */
  List<Machine> machines = [];

  EmbeddedMachines();

  @override
  String toString() {
    return 'EmbeddedMachines[machines=$machines, ]';
  }

  EmbeddedMachines.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    machines = Machine.listFromJson(json['machines']);
  }

  Map<String, dynamic> toJson() {
    return {
      'machines': machines
     };
  }

  static List<EmbeddedMachines> listFromJson(List<dynamic> json) {
    return json == null ? new List<EmbeddedMachines>() : json.map((value) => new EmbeddedMachines.fromJson(value)).toList();
  }

  static Map<String, EmbeddedMachines> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, EmbeddedMachines>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new EmbeddedMachines.fromJson(value));
    }
    return map;
  }
}
