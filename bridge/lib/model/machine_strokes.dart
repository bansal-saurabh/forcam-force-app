part of swagger.api;

class MachineStrokes {
  
  int strokes = null;

  MachineStrokes();

  @override
  String toString() {
    return 'MachineStrokes[strokes=$strokes, ]';
  }

  MachineStrokes.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    strokes = json['strokes'];
  }

  Map<String, dynamic> toJson() {
    return {
      'strokes': strokes
     };
  }

  static List<MachineStrokes> listFromJson(List<dynamic> json) {
    return json == null ? new List<MachineStrokes>() : json.map((value) => new MachineStrokes.fromJson(value)).toList();
  }

  static Map<String, MachineStrokes> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, MachineStrokes>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new MachineStrokes.fromJson(value));
    }
    return map;
  }
}
