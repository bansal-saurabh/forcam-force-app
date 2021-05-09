part of swagger.api;

class ToolIdentifierValue {
  /* A domain specific identifier of the tool group */
  String identifier = null;
/* The name of the identifier */
  String name = null;

  ToolIdentifierValue();

  @override
  String toString() {
    return 'ToolIdentifierValue[identifier=$identifier, name=$name, ]';
  }

  ToolIdentifierValue.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    identifier = json['identifier'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    return {
      'identifier': identifier,
      'name': name
     };
  }

  static List<ToolIdentifierValue> listFromJson(List<dynamic> json) {
    return json == null ? new List<ToolIdentifierValue>() : json.map((value) => new ToolIdentifierValue.fromJson(value)).toList();
  }

  static Map<String, ToolIdentifierValue> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ToolIdentifierValue>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ToolIdentifierValue.fromJson(value));
    }
    return map;
  }
}
