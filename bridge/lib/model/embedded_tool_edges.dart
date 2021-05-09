part of swagger.api;

class EmbeddedToolEdges {
  /* The tool edges */
  List<ToolEdge> toolEdges = [];

  EmbeddedToolEdges();

  @override
  String toString() {
    return 'EmbeddedToolEdges[toolEdges=$toolEdges, ]';
  }

  EmbeddedToolEdges.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    toolEdges = ToolEdge.listFromJson(json['toolEdges']);
  }

  Map<String, dynamic> toJson() {
    return {
      'toolEdges': toolEdges
     };
  }

  static List<EmbeddedToolEdges> listFromJson(List<dynamic> json) {
    return json == null ? new List<EmbeddedToolEdges>() : json.map((value) => new EmbeddedToolEdges.fromJson(value)).toList();
  }

  static Map<String, EmbeddedToolEdges> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, EmbeddedToolEdges>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new EmbeddedToolEdges.fromJson(value));
    }
    return map;
  }
}
