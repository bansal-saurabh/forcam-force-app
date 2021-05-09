part of swagger.api;

class EmbeddedTools {
  /* The tools */
  List<Tool> tools = [];

  EmbeddedTools();

  @override
  String toString() {
    return 'EmbeddedTools[tools=$tools, ]';
  }

  EmbeddedTools.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    tools = Tool.listFromJson(json['tools']);
  }

  Map<String, dynamic> toJson() {
    return {
      'tools': tools
     };
  }

  static List<EmbeddedTools> listFromJson(List<dynamic> json) {
    return json == null ? new List<EmbeddedTools>() : json.map((value) => new EmbeddedTools.fromJson(value)).toList();
  }

  static Map<String, EmbeddedTools> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, EmbeddedTools>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new EmbeddedTools.fromJson(value));
    }
    return map;
  }
}
