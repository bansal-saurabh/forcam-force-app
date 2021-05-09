part of swagger.api;

class MachineCount {
  
  int count = null;

  MachineCount();

  @override
  String toString() {
    return 'MachineCount[count=$count, ]';
  }

  MachineCount.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    count = json['count'];
  }

  Map<String, dynamic> toJson() {
    return {
      'count': count
     };
  }

  static List<MachineCount> listFromJson(List<dynamic> json) {
    return json == null ? new List<MachineCount>() : json.map((value) => new MachineCount.fromJson(value)).toList();
  }

  static Map<String, MachineCount> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, MachineCount>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new MachineCount.fromJson(value));
    }
    return map;
  }
}
